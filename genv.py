#! /usr/bin/env python3

import jinja2
import argparse

input_parser = argparse.ArgumentParser(description="Generate a specific Verilog library, based on generic model templates from a YAML file.")
input_parser.add_argument("-g", "--generic_models", metavar="GEN_DIR", nargs=1, help="specify location of generic Verilog models")
input_parser.add_argument("-d", "--directory", metavar="DIR", nargs=1, help="specify destination directory of generic Verilog models")
input_parser.add_argument("lib_spec", help="the YAML file containing specifications for the library")

args = input_parser.parse_args()
print(args)

env = jinja2.Environment(loader=jinja2.FileSystemLoader('templates'),
    variable_start_string="{?", variable_end_string="?}")
template = env.get_template('vlib_nand2.v')
print(template.render(lib='st8', in0="A", in1= "B", out0="Z"))
