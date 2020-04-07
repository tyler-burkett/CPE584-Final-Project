import jinja2

env = jinja2.Environment(loader=jinja2.FileSystemLoader('templates'),
    variable_start_string="{?", variable_end_string="?}")
template = env.get_template('vlib_nand2.v')
print(template.render(lib='st8', in0="A", in1= "B", out0="Z"))
