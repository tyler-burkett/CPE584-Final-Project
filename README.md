# CPE584-Final-Project
Final project for CPE584.  
Generic template script for creating Verilog modules from different vendor libraries.   
Parsing script for creating


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

### parse.py help
works for python v3+   


#### How to call the script
$ vparse.py   
This will show a usage screen
&nbsp;  

$ vparse.py modules_file model_func_map module_regex  
This will call the function without optional arguments. These file are assumed to be in the same directory if no path is given.

#### Positional Arguments
modules_file  
The Verilog file containing the module definitions to parse.
&nbsp;  

model_func_map  
The CSV model-func mapping file.
&nbsp;  

module_regex  
The regular expression defining the naming convention used by the modules defined in the 'modules_file' Verilog file.
&nbsp;  
#### Optional Arguments

-h   
This displays a help menu.    
**example call:** $ vparse.py -h modules_file model_func_map module_regex
&nbsp;  
&nbsp;

-d RUN_DIR   
This command allows you to select the location of the run directory. The default location is the current directory.    
**example call:** $ vparse.py -d ./secondary_run modules_file model_func_map module_regex
&nbsp;  
&nbsp;

-m [MACRO [MACRO...]]   
This command allows you to specify a list of defined macros to use when parsing the Verilog modules.   
If the flag is not presnt, or no macros are given, then the code is parsed with no macros initially set.  
Any **\`define** directives encountered will cause the script to continue on with the specified macro as now being defined.   
Any **\`undef** directives will cause the script to continue on with the given macro as no longer being defined, regardless of the macros specified by this option.   
Thus, the "definition" of a macro changes accordingly as the Verilog code is parsed.   
**example call:** $ vparse.py -m [BIAS PINS [SC_USE)PG_PIN]] modules_file model_func_map module_regex
&nbsp;  
&nbsp;
