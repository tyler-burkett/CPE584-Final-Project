#! /usr/bin/env python3

import jinja2
import jinja2.meta
import yaml
import argparse
import itertools

def get_variables(env, template_file):
    src = env.loader.get_source(env, template_file)
    parsed = env.parse(src)
    return jinja2.meta.find_undeclared_variables(parsed)

if __name__ == "__main__":
    input_parser = argparse.ArgumentParser(description="Generate a specific Verilog library, based on generic model templates from a YAML file.")
    input_parser.add_argument("-g", "--generic_models", metavar="GEN_DIR",
    nargs=1, help="specify location of generic Verilog models")
    input_parser.add_argument("-d", "--lib_directory", metavar="DIR",
    nargs=1, help="specify destination directory of generic Verilog models")
    input_parser.add_argument("lib_spec", help="the YAML file containing specifications for the library")

    args = input_parser.parse_args()

    # TODO: catch and prettify error messages
    library_spec = yaml.safe_load(vars(args)["lib_spec"])

    # Try to load path for generic models and destination lib_directory
    # Preference:
    # 1) passed in args
    # 2) global parameter in loaded YAML
    # 3) Default
    if vars(args)["generic_models"] is not None:
        generic_models_dir = vars(args)["generic_models"]
    else:
        try:
            generic_models_dir = library_spec["generic_models"]
        except:
            generic_models_dir = "./templates"

    if vars(args)["lib_directory"] is not None:
        lib_dir = vars(args)["lib_directory"]
    else:
        try:
            lib_dir = library_spec["lib_directory"]
        except:
            lib_dir = "."

    # Copy global parameters from the lib_spec YAML
    global_dict = dict()
    for key, value in library_spec.items():
        if key != "cells":
            global_dict[key] = value

    # Start jinja2
    env = jinja2.Environment(loader=jinja2.FileSystemLoader(generic_models_dir),
        variable_start_string="{?", variable_end_string="?}")

    for cell in library_spec["cells"]:
        # Make in and out an element in its own list
        # (they are supposed to be a list; we do not want to
        # iterate over them in this step)
        cell["in"] = list().append(cell["in"])
        cell["out"] = list().append(cell["out"])

        # Turn any single scalars into a list with
        # a single element
        for key in cell.keys():
            if not isinstance(value, list):
                cell[key] = [cell[key]]

        # Calculate the cross product of the parameters in the cell
        # and convert that back into a dict with the same names
        # Ex:
        # function: a2bb2o
        # name: a2bb2o
        # drives: [1, 2, 4]
        # out: [X] # maps to out0, out1, etc.
        # in: [A1N, A2N, B1, B2] # maps to in0, in1, etc.
        # Cross prodcuts:
        # {
        # (name: a2bb2o, drives: 1, out:[X], in:[A1N, A2N, B1, B2]),
        # (name: a2bb2o, drives: 2, out: [X], in: [A1N, A2N, B1, B2]),
        # (name: a2bb2o, drives: 4, out: [X], in: [A1N, A2N, B1, B2]),
        # }
        cell_keys = cell.keys()
        cell_values = cell.values()
        for combination in itertools.product(*cell_values):

            # Combine global dict and a specfic combination of paramters into None
            # dictionary
            template_dict = {**global_dict, **dict(zip(cell_keys, combination))}

            # Load template
            # TODO: catch invalid function
            template_file = cell["function"] + ".v"
            template = env.get_template(template_file)

            # TODO: check for missing parameters
            variables = get_variables(env, template_file)

            template.render(template_dict)
        # Load template: template = env.get_template(model_name + ".v")
        # Render template: template.render(**vars_dict)
