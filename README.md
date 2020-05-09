# CPE584-Final-Project
Final project for CPE584.  
Generic template script for creating Verilog modules from different vendor libraries.   
Parsing script for creating the yaml file.


### generate_verilog.py Help
### Installation
Install python v2.6+    
##### Required Python Libraries
- argparse   
- pyyaml  
- future  
- jinja2

#### How to call the script
$ python generate_verilog.py [location of the .yml file]  
**example call:** $ generate_verilog.py ./tests/data/scs8hd.yml
#### Optional Arguments   

-h   
This displays a help menu.    
**example call:** $ generate_verilog.py -h
&nbsp;  
&nbsp;

-t TEMPLATE_DIR   
This command allows you to select the location of the template directory. The default location for the template directory is: ./templates   
**example call:** $ generate_verilog.py -t ./secondary_templates ./tests/data/scs8hd.yml
&nbsp;  
&nbsp;

-d OUTPUT_DIR   
This command allows you to select the location of the output directory. The default location is ./[library_name]    
Your input will change the location of the created [library_name] directory.  
**example call:** $ generate_verilog.py -d ./secondary_output ./tests/data/scs8hd.yml
&nbsp;  
&nbsp;

-m   
This command allows you to turn on multi_file and output each generated Verilog template in its own file. The default output is in one file back to back with three blank line separating them.  
**example call:** $ generate_verilog.py -m ./tests/data/scs8hd.yml
&nbsp;  
&nbsp;

#### The provided YAML should have the following format:

lib: <\library_name>  
header: \<header_comment>   
vpwr: \<power_pin_name> | [\<power_pin_name>,...]   
vgnd: \<ground_pin_name> | [\<ground_pin_name>,...]   
vpb: \<power_pin_name> | [\<power_pin_name>,...]    
vnb: \<power_pin_name> | [\<power_pin_name>,...]    
cells:   
\-  
&nbsp;&nbsp;  function: \<function_name>  
&nbsp;&nbsp;  name: \<module_name>  
&nbsp;&nbsp;  drive: \<drive_value> | [\<drive_values>]   
&nbsp;&nbsp;  out: [\<output_pin_name>, ...]  
&nbsp;&nbsp;  in: [\<input_pin_name>, ...]  
...

### module_parser.py Help
works for python v3+   


#### How to call the script
$ module_parser.py   
This will show a usage screen.
&nbsp;  

$ module_parser.py -args [ARGS_FILE]
This will call the scipt with the arguments specified in the provided agruments file.  
**example call:**
$ module_parser.py -args arguments.csv


#### Arguments

-h   
This option displays a help menu.    
**example call:** 
$ module_parser.py -h
&nbsp;  
&nbsp;

-args ARGS_FILE
The command line arguments can be subsituted for the values specified within this CSV arguments file. The file should be organized such that the first column in each row specifies a valid argument type, and the second column specifies the value for that argument type. If a particular argument type accepts a list of values, then all columns following the first are treated as a list of values. Otherwise, any extra columns in a row will be ignored. If an argument is defined twice within this file, then the later definition will overwrite the former.
&nbsp;
The valid arguments types that can be specified in the first column are:
- 'MODULES_FILE' - The Verilog file containing the module definitions to parse. Accepts a single value. Corresponds to the -v option.
- 'MAP_FILE' - The CSV model-func mapping file. Accepts a single value. Corresponds to the -f option.
- 'MODULE_REGEX' - The regular expression defining he naming convention used by the modules defined in the Verilog modules file. Accepts a single value. Corresponds to the -r option.
- 'RUN_DIR' - The run directory. Accepts a single value. Corresponds to the -d option.
- 'MACROS' - The list of defined macros to use when parsing the Verilog modules file. Accepts a list of values. Corresponds to the -m option.

If an argument is specified in a provided argument file and by the
corresponding command line option, then the command line option takes precedence.
**example call:**
$ module_parser.py -args arguments.csv
&nbsp;
&nbsp;

-v MODULES_FILE
Use this option to specify the Verilog file containing the module definitions to parse.
**example call:**
$ module_parser.py -args arguments.csv -v modules.v
&nbsp;
&nbsp;

 -f MAP_FILE
Use this option to specify the CSV model-func mapping file. The file should be structured such that in each row, a module/cell's base name is listed in the second column and its corresponding "golden standard" function name is given in the first column. If multiple cells' base names map to the same function name, then all of these base names may be listed in the same row.
**example call:**
$ module_parser.py -args arguments.csv -f modelFuncMap.csv
&nbsp;
&nbsp;

-r MODULE_REGEX
The regular expression defining the naming convention used by the modules defined in the 'modules_file' Verilog file. The regex syntax defined by the the "re" Python module should be followed. This regular expression must include four capturing groups named: "lib", "model", "base", and "drive". These capturing groups are used to extract the library name, model name, base name, and drive strength, respectively, from each module's name. The "base" name is used to find the module/cell's corresponding function from the model-func mapping file, whereas the "model" name is the name of the cell, which might include an extension to specify the particular channel length of the given cell.
&nbsp;
For example, in order to run this script on a set of modules that are named by the combination of their library name (any sequence of uppercase characters); an underscore; the model name of the cell, which is composed of the base name of the cell (any sequence of lowercase characters) an underscore, and an extension name (any sequence of lowercase characters and digits); an underscore; and the drive strength of that particular cell (any sequence of digits), the following regex could be used:
`(?P<lib>[A-Z]+)_(?P<model>(?P<base>[a-z]+)_[a-z\d]+)_(?P<drive>[\d]+)`
&nbsp;
The regex will likely need to be wrapped in double quotes (") when provided by this command line option in order to avoid the special characters that are recognized by the user's shell.
**example call:**
$ module_parser.py -args arguments.csv -r "(?P&lt;lib&gt;[A-Z]+)\_(?P&lt;model&gt;(?P&lt;base&gt;[a-z]+)\_[a-z\d]+)\_(?P&lt;drive&gt;[\d]+)"
&nbsp;
&nbsp;

-m [MACRO [MACRO ...]]
Use this option to specify the list of defined macros to use when parsing the Verilog modules. If this flag is not present or is present without any macros listed and is not defined within the arguments file, then the Verilog code is parsed with no macros initially set. Any \`define directives encountered will cause the script to continue on with the specified macro as now being defined, and any \`undef directives will cause the script to continue on with the given macro as no longer being defined, regardless of the macros specified by this option and/or in the arguments file. Thus, the "definition" of a macro changes accordingly as the Verilog code is parsed. 
**example call:**
$ module_parser.py -args arguments.csv -m USE_POWER_PINS
&nbsp;
&nbsp;

 -d RUN_DIR
 Use this option to specify the run directory. The default location is the current directory. 
 **example call:**
$ module_parser.py -args arguments.csv -d rundir
&nbsp;
&nbsp;

-c    
This option produces a file named 'compiled.&lt;MODULE_FILE&gt;', which contains the simplified Verilog code that the parser looks at after pre-processing compiler directives. 
 **example call:**
$ module_parser.py -args arguments.csv -c
&nbsp;
&nbsp;