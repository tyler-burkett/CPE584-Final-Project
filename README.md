# CPE584-Final-Project
Final project for CPE584.  
Generic template script for creating Verilog modules from different vendor libraries.

### Required Python Libraries
- argparse   
- pyyaml  
- future  
- jinja2

### generate_verilog.py Help
Works for python v2.6 and newer.

#### How to call the script
$ python generate_verilog.py [location of the .yml file]  
**example call:** $ python generate_verilog.py ./tests/data/scs8hd.yml
#### Optional Arguments
-h   
This displays a help menu.  
**example call:** **example call:** $ python generate_verilog.py -h

-t TEMPLATE_DIR   
This command allows you to select the location of the template directory. The default location for the template directory is: ./templates       
**example call:** $ python generate_verilog.py -t ./secondary_templates ./tests/data/scs8hd.yml

-d OUTPUT_DIR   
This command allows you to select the location of the output directory. The default location is ./[library_name]    
Your input will change the location of the created [library_name] directory.    
**example call:** $ python generate_verilog.py -d ./secondary_output ./tests/data/scs8hd.yml

-m   
This command allows you to turn on multi_file and output each generated Verilog template in its own file. The default output is in one file back to back with three blank line separating them.  
**example call:** $ python generate_verilog.py -m ./tests/data/scs8hd.yml

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

#### How to call the script
$ python parse.py [-------------------]

#### Optional Arguments 
