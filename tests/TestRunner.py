from enums.enums import *
from classes.generated import *
from pluginscript_api.utils.annotations import *
import sys
import os

@gdclass
class TestRunner(Spatial):
	def __init__(self):
		super().__init__()
		self.velocity = 0
		print("--------------------------hallo----------------------------")
		print(sys.path)
		print(os.getcwd())
		import PythonTest
		import unittest
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		unittest.TextTestRunner().run(suite)
	@gdmethod
	def _start():
		print("##########start#############")


