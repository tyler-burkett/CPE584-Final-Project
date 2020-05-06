# Note: the test can only be done using Python3, due to
import unittest
import os
import re
import subprocess
import sys
import shutil
import difflib

class GenerateVerilogTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        # Run generate verilog script on test.yml and deposit
        # verilog results in this test directory
        dir_path = os.path.dirname(os.path.normpath(__file__))
        test_yml = "./tests/data/scs8hd.yml"
        subprocess.call([sys.executable, "./generate_verilog.py", "-m", "-d{}".format(dir_path), test_yml])

        # Setup paths
        cls.dir_path = os.path.dirname(os.path.normpath(__file__))
        cls.test_models_path = "tests/data/scs8hd"
        cls.gen_models_path = os.path.normpath(os.path.join(dir_path + os.sep, os.path.basename(cls.test_models_path)))

    @unittest.skip("Not completely automated")
    def test_script_outputs(self):
        # Make test do nothing until we can test on proper verilog sim setup
        return

        # Check the models in the test models and confirm that they
        # match the generated ones
        dir_path = os.path.dirname(os.path.normpath(__file__))
        test_models_path = "tests/data/scs8hd"
        self.gen_models_path = os.path.normpath(os.path.join(dir_path + os.sep, os.path.basename(test_models_path)))
        files_to_check = os.listdir(test_models_path)
        for model in files_to_check:
            test_model = os.path.abspath(os.path.join(test_models_path + os.sep, model))
            gen_model = os.path.abspath(os.path.join(self.gen_models_path + os.sep, model))
            if subprocess.call(["ncsim", test_model], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL):
                continue
            if subprocess.call(["ncsim", gen_model], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL):
                print("Error in generated model {}".format(gen_model))
                self.fail()

    def test_script_diff(self):
        # Check the models in the generated models and confirm that they
        # match the test ones
        files_to_check = os.listdir(self.gen_models_path)
        for model in files_to_check:
            test_model = os.path.abspath(os.path.join(self.test_models_path + os.sep, model))
            gen_model = os.path.abspath(os.path.join(self.gen_models_path + os.sep, model))
            spaces_and_comments = r"(?m)\s+|^ *//.*\n?"
            with open(test_model, "r") as test_file:
                test_model_text = re.sub(spaces_and_comments, "", test_file.read())
            with open(gen_model, "r") as gen_file:
                gen_model_text = re.sub(spaces_and_comments, "", gen_file.read())
            diffchecker = difflib.SequenceMatcher(None, test_model_text, gen_model_text)
            if diffchecker.ratio() < 0.98:
                self.fail("Error in generated model {0}".format(gen_model))
            if diffchecker.ratio() != 1:
                print("Differences found between {0} and {1}".format(test_model, gen_model))
                for tag, i1, i2, j1, j2 in diffchecker.get_opcodes():
                    if (test_model_text[i1:i2] != "" or gen_model_text[j1:j2] != "") and tag != "equal":
                        print("{0} test_model[{1}:{2}] ({3}) gen_model[{4}:{5}] ({6})".format(tag, i1, i2, test_model_text[i1:i2], j1, j2, gen_model_text[j1:j2]))

    @classmethod
    def tearDownClass(cls):
        if os.path.exists(cls.gen_models_path):
            shutil.rmtree(cls.gen_models_path)
