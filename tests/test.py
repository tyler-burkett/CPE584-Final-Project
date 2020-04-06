import yaml
import re
import tempfile

with tempfile.TemporaryFile("a+") as final_yaml:
    with open("tests/test_top.yml", "r") as top_file:
        models = re.findall(r"\*([\w-]+)", top_file.read(), re.DOTALL)
        if models is not None:
            for match in set(models):
                path = "tests/" + match + ".yml"
                with open(path, "r") as model_file:
                    final_yaml.write(model_file.read())
        top_file.seek(0)
        final_yaml.write(top_file.read())
    final_yaml.seek(0)
    print(final_yaml.read())
    final_yaml.seek(0)
    a = yaml.safe_load(final_yaml.read())["top"]
    print(a)

    final_yaml.seek(0)
    with open("tests/test_top_out.yml", "w") as out_file:
        yaml.safe_dump(a, out_file)
