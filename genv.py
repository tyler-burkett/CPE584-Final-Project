#! /usr/bin/env python

import jinja2
import jinja2.meta
import yaml
import argparse
import itertools
import os, sys
import re

def get_variables(env, template_file):
    src = env.loader.get_source(env, template_file)
    parsed = env.parse(src)
    return jinja2.meta.find_undeclared_variables(parsed)

if __name__ == "__main__":
    input_parser = argparse.ArgumentParser(description="Generate a specific Verilog library, based on generic model templates from a YAML file.")
    input_parser.add_argument("-g", "--generic_models", metavar="GEN_DIR",
    nargs=1, help="specify location of generic Verilog models")
    input_parser.add_argument("-d", "--lib_directory", metavar="DIR",
    nargs=1, help="specify destination directory of specific Verilog models")
    input_parser.add_argument("-1", "--1-file", action="store_true", help="make output of template go to a single library file rather than individual files")
    input_parser.add_argument("lib_spec", help="the YAML file containing specifications for the library")

    args = input_parser.parse_args()

    # TODO: catch and prettify error messages
    try:
        with open(vars(args)["lib_spec"]) as lib_yaml:
            library_spec = yaml.safe_load(lib_yaml)
    except EnvironmentError:
        print("error: Failed to load config YAML")
        sys.exit(1)

    # Try to load path for generic models and destination lib_directory
    # Preference:
    # 1) passed in args
    # 2) global parameter in loaded YAML
    # 3) Default
    if vars(args)["generic_models"] is not None:
        generic_models_dir = vars(args)["generic_models"]
    else:
        try:
            generic_models_dir = library_spec["templates"]
        except KeyError:
            generic_models_dir = "./templates"

    if vars(args)["lib_directory"] is not None:
        lib_dir = vars(args)["lib_directory"]
    else:
        try:
            lib_dir = "./{}/".format(library_spec["lib"])
        except KeyError:
            lib_dir = "./out_lib/"

    # Copy global parameters from the lib_spec YAML
    single_elements = {"lib", "header"}
    global_dict = dict()
    for key, value in library_spec.items():
        if key != "cells" and key not in single_elements:
                global_dict[key] = [value]
        elif key in single_elements:
            global_dict[key] = value

    # Start jinja2
    env = jinja2.Environment(loader=jinja2.FileSystemLoader(generic_models_dir),
        variable_start_string="{?", variable_end_string="?}")

    for num, cell in enumerate(library_spec["cells"]):
        # Make in, out, reg an element in its own list
        # (they are supposed to be a list; we do not want to
        # iterate over them in this step)
        try:
            cell["in"] = [cell["in"]]
        except KeyError:
            pass
        try:
            cell["out"] = [cell["out"]]
        except KeyError:
            pass

        # Turn any single scalars into a list with
        # a single element
        for key in cell.keys():
            if not isinstance(cell[key], list):
                cell[key] = [cell[key]]

        cell_keys = cell.keys()
        cell_values = cell.values()

        # check for missing parameters by loading the template specifed in "function"
        # and checking all the keys in the final template dict match variables in the
        # template
        precheck_set = set(global_dict.keys()) | set(cell_keys)
        template_file = cell["function"][0] + ".v"
        try:
            variables = get_variables(env, template_file)
        except jinja2.exceptions.TemplatesNotFound:
            # Unknown function given in cell; print error and skip to next cell
            print("error: unknown function {} found in cell# {}".format(str(cell["function"]), str(num)))
            continue

        complete_vars = all(var in precheck_set for var in variables)
        if not complete_vars:
            # If variables are missing, skip the cell and move on
            missing_vars = set(var for var in variables if var not in precheck_set)
            print("error: missing the following variables {} for cell# {}".format(str(missing_vars), str(num)))
            continue

        # Calculate the cross product of the parameters in the cell
        # and convert that back into a dict with the same names
        # Ex:
        # function: a2bb2o
        # name: a2bb2o
        # drives: [1, 2, 4]
        # out: [X] # maps to out0, out1, etc.
        # in: [A1N, A2N, B1, B2] # maps to in0, in1, etc.
        # Cross products:
        # {
        # (name: a2bb2o, drives: 1, out:[X], in:[A1N, A2N, B1, B2]),
        # (name: a2bb2o, drives: 2, out: [X], in: [A1N, A2N, B1, B2]),
        # (name: a2bb2o, drives: 4, out: [X], in: [A1N, A2N, B1, B2]),
        # }
        for combination in itertools.product(*cell_values):

            # Combine global dict and a specfic combination of paramters into None
            # dictionary
            template_dict = global_dict.copy()
            template_dict.update(dict(zip(cell_keys, combination)))

            # Load template
            template = env.get_template(template_file)

            templating_result = template.render(template_dict)

            if vars(args)["1_file"] is True:
                # append the results to one big library file
                file_name = "{}.v".format(library_spec["lib"])
            else:
                # create a seperate .v file for the new cell
                search_result = re.search(r"module ([\d\w]*)", templating_result)
                file_name = search_result.group(1) + ".v"

            # Open file and write the templating results to it

            # Try to create directory on first write
            if not os.path.exists(lib_dir):
                try:
                    os.mkdir(lib_dir)
                except EnvironmentError:
                    print("error: failed to open directory for output library")
                    sys.exit(1)
            # Either write or append depending on single-file setting
            file_path = os.path.join(lib_dir, file_name)
            if vars(args)["1_file"] is True:
                with open(file_path, "a") as file:
                    file.write(templating_result)
            else:
                with open(file_path, "w") as file:
                    file.write(templating_result)
