from py4godot import *
import PythonTest
import unittest
import sys
import os

@gdclass
class TestRunner(Spatial):
	
	def __init__(self):
		print("__init__")
	@gdmethod
	def _ready(self):
		print("##########start#############")
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner().run(suite)
		if(len(res.failures) == 0):
			self.get_tree().quit(0)
		else:
			self.get_tree().quit(1)


