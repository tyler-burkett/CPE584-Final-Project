# Templating Readme #

Instructions for creating new template files.   



### jinja2 ###
**jinja2 reference:** https://jinja.palletsprojects.com/en/2.11.x/templates/

{{ name }} is standard way to insert variable for jinja2, we changed the syntax to {? name ?} because {{ }} already has a meaning in Verilog.

jinja2 can also be used add in logic expressions to create more complex templates. This could allow for one complex template for 2,3,and 4 input nands instead of a separate template for each.

### Instructions ###    
1. Examine the file that you want to create a template for.   
2. Create a jinja2 comment, using {# #}, to add a description and parameter mapping.
3. Replace the header with {? header ?}
4. Find the variables in the file and replace them with jinja code injection syntax, we used {? code ?}  
  - You can use Find and Replace features that allow you to *match case* and *whole word only* to speed up the process. Notepad++ has such features.

### Advice ###
- I recommend using Notepad++ because it will allow you to use find and replace on only matched case and whole word only as toggles. This will assist in replacing all instances of the variable each time.   
- Notepad++ also allows you to replace in all opened document, in that window. This is helpful if you have common variables over multiple files that you want to give the same name to.
