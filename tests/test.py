import jinja2

env = jinja2.Environment(loader=jinja2.FileSystemLoader('templates'))
template = env.get_template('vlib_nand2.v')
print(template.render(lib='st8'))
