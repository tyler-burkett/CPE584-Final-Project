## CPE584-Final-Project
Final project for CPE584.  
Generic template script for creating Verilog modules from different vendor libraries.

The provided YAML should look like the following:

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
