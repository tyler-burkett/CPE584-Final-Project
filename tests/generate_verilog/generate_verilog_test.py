# Note: the test can only be done using Python3, due to
import unittest
import os
import subprocess
import sys
import shutil

class GenerateVerilogTest(unittest.TestCase):

    def test_script_outputs(self):

        # Run generate verilog script on test.yml and deposit
        # verilog results in this test directory
        dir_path = os.path.dirname(os.path.normpath(__file__))
        test_yml = "./tests/data/scs8hd.yml"
        subprocess.call([sys.executable, "./generate_verilog.py", "-m", "-d{}".format(dir_path), test_yml])

        # Check the models in the test models and confirm that they
        # match the generated ones
        test_models_path = "tests/data/scs8hd"
        self.gen_models_path = os.path.normpath(os.path.join(dir_path + os.sep, os.path.basename(test_models_path)))
        files_to_check = os.listdir(test_models_path)
        for model in files_to_check:
            test_model = os.path.abspath(os.path.join(test_models_path + os.sep, model))
            gen_model = os.path.abspath(os.path.join(self.gen_models_path + os.sep, model))
            if subprocess.call(["iverilog", test_model], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL):
                continue
            if subprocess.call(["iverilog", gen_model], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL):
                print("Error in generated model {}".format(gen_model))
                self.fail()

    def tearDown(self):
        if os.path.exists(self.gen_models_path):
            shutil.rmtree(self.gen_models_path)
