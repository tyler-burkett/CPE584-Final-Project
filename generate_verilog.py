#! /usr/bin/env python

import jinja2
import jinja2.meta
import yaml
import argparse
import itertools
import os
import sys
import re


def get_variables(env, template_file):
    """Get names of variables out of the template."""
    src = env.loader.get_source(env, template_file)
    parsed = env.parse(src)
    return jinja2.meta.find_undeclared_variables(parsed)


if __name__ == "__main__":
    description = "Generate a vendor-specific Verilog library, using templates and a library specification YAML file."
    epilog = """
    The provided YAML should look like the following:

    lib: <library_name>
    header: <header_comment>
    vpwr: <power_pin_name> | [<power_pin_name>,...]
    vgnd: <ground_pin_name> | [<ground_pin_name>,...]
    vpb: <power_pin_name> | [<power_pin_name>,...]
    vnb: <power_pin_name> | [<power_pin_name>,...]
    cells:
    -
      function: <function_name>
      name: <module_name>
      drive: <drive_value> | [<drive_values>]
      out: [<output_pin_name>, ...]
      in: [<input_pin_name>, ...]
    ...

    """
    input_parser = argparse.ArgumentParser(description=description, epilog=epilog, formatter_class=argparse.RawTextHelpFormatter)

    input_parser.add_argument("-t", "--templates_directory", metavar="TEMPLATE_DIR",
    nargs=1, help="specify location of Verilog templates (default: ./templates)")

    input_parser.add_argument("-d", "--library_directory", metavar="OUTPUT_DIR",
    nargs=1, help="specify directory to create vendor-specific library in (default: ./)")

    input_parser.add_argument("-m", "--multi_file", action="store_true",
    help="store each output Verilog module in it's own file, rather than palcing all of them into one")

    yaml_help = \
"""the YAML containing specifications for the vendor-specfic Verilog library you want to generate
Can be either a file path or YAML-formatted text directly from standard input
"""
    input_parser.add_argument("library_spec", nargs="?", default=sys.stdin,
    help=yaml_help)

    args = input_parser.parse_args()

    # Python 2; convert basestrings to str type in args
    try:
        for var in vars(args):
            if isinstance(args.__dict__[var], basestring):
                args.__dict__[var] = str(args.__dict__[var])
    except NameError:
        pass

    # Take the YAML file (either from stdin or file) and try to load it
    try:
        # Input is valid file path; try to load it and read in a YAML object
        if isinstance(vars(args)["library_spec"], str) and os.path.exists(vars(args)["library_spec"]):
            with open(vars(args)["library_spec"]) as yaml_file:
                library_spec = yaml.safe_load(yaml_file)

        # Input is either a string or stdin
        else:
            # Check to make sure stdin was given something
            if vars(args)["library_spec"] is sys.stdin and sys.stdin.isatty():
                sys.stderr.write("error: expected YAML string or path to YAML file\n")
                sys.exit(1)

            # Load string/string from stdin
            library_spec = yaml.safe_load(vars(args)["library_spec"])

            # Do basic check to make sure the result is at least a dictionary
            # (e.x. a bad file path might get here and be loaded as a string)
            if not isinstance(library_spec, dict):
                sys.stderr.write("error: invalid YAML or path provided\n")
                sys.exit(1)

    except EnvironmentError:
        sys.stderr.write("error: Failed to load config YAML\n")
        sys.exit(1)

    # Try to load path for generic models and destination library directory
    # Preference:
    # 1) passed in args
    # 2) global parameter in loaded YAML
    # 3) Default
    if vars(args)["templates_directory"] is not None:
        templates_dir = vars(args)["templates_directory"][0]
    else:
        templates_dir = "./templates"

    if vars(args)["library_directory"] is not None:
        lib_dir = os.path.join(vars(args)["library_directory"][0] + os.sep, "{0}/".format(library_spec["lib"]))
        lib_dir = os.path.normpath(lib_dir)
    else:
        try:
            lib_dir = "./{0}/".format(library_spec["lib"])
        except KeyError:
            sys.stderr.write("error: library not specified in provided library specification\n")
            sys.exit(1)

    # Copy global parameters from the library specification YAML
    single_elements = ["lib", "header"]
    global_dict = dict()
    for key, value in library_spec.items():
        if key != "cells" and key not in single_elements:
            global_dict[key] = [value]
        elif key in single_elements:
            global_dict[key] = value

    # Startup jinja2 templating environment
    env = jinja2.Environment(loader=jinja2.FileSystemLoader(templates_dir),
        variable_start_string="{?", variable_end_string="?}")

    for num, cell in enumerate(library_spec["cells"]):
        # Make in, out lists an element in its own list
        # (they are supposed to be a list; we do not want to
        # iterate over the items in them).
        # Put any other single elements into a list to iterate over
        list_cell_names = ["in", "out"]
        for key in cell.keys():
            if key in list_cell_names or not isinstance(cell[key], list):
                cell[key] = [cell[key]]

        cell_keys = cell.keys()

        # check for missing parameters by loading the template specifed in "function"
        # and checking all the keys in the final template dict match variables in the
        # template
        precheck_set = set(global_dict.keys()) | set(cell_keys)
        template_file = cell["function"][0] + ".v"
        try:
            variables = get_variables(env, template_file)
        except jinja2.exceptions.TemplatesNotFound:
            # Unknown function given in cell; print error and skip to next cell
            sys.stderr.write("warning: unknown function {0} found in cell# {1}; skipping\n".format(str(cell["function"]), str(num)))
            continue

        complete_vars = all(var in precheck_set for var in variables)
        if not complete_vars:
            # If variables are missing, skip the cell and move on
            missing_vars = set(var for var in variables if var not in precheck_set)
            sys.stderr.write("warning: missing the following variables {0} for cell# {1}; skipping\n".format(str(missing_vars), str(num)))
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
        cell_values = cell.values()
        for combination in itertools.product(*cell_values):

            # Combine global dictionary and a specfic combination of paramters into
            # a dictionary to use for templating
            template_dict = global_dict.copy()
            template_dict.update(dict(zip(cell_keys, combination)))

            # Blank out header for future templates if not in multi-file mode;
            # make the single-file only have the header once
            if not vars(args)["multi_file"]:
                global_dict["header"] = ""

            # Load template
            template = env.get_template(template_file)

            # Fill out template with given values
            templating_result = template.render(template_dict)
            templating_result += "\n"

            # Determine name of file to store templating results into
            if not vars(args)["multi_file"]:
                # append the results to one big library file
                file_name = "{0}.v".format(library_spec["lib"])
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
                    sys.stderr.write("error: failed to open directory for output library\n")
                    sys.exit(1)

            # Either write or append depending on multi-file setting
            file_path = os.path.join(lib_dir, file_name)
            if not vars(args)["multi_file"]:
                with open(file_path, "a") as file:
                    file.write(templating_result)
            else:
                with open(file_path, "w") as file:
                    file.write(templating_result)
