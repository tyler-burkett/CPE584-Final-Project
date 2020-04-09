#! /usr/bin/env python3

import jinja2
import yaml
import argparse
import itertools

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


env = jinja2.Environment(loader=jinja2.FileSystemLoader(generic_models_dir),
    variable_start_string="{?", variable_end_string="?}")
# Load template: template = env.get_template(model_name + ".v")
# Render template: template.render(**vars_dict)
