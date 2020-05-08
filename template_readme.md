# Templating Readme #

Instructions for creating new template files.   
Reasons for the choice we made in our templating.


### jinja2 ###
**jinja2 reference:** https://jinja.palletsprojects.com/en/2.11.x/templates/

{{ name }} is standard way to insert variable for jinja2, we changed the syntex to {? name ?} because {{ }} already have meaning in Verilog.
