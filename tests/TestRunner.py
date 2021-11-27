from enums.enums import *
from classes.generated import *
from pluginscript_api.utils.annotations import *
import PythonTest
import unittest
import sys
import os

@gdclass
class TestRunner(Spatial):
	@gdmethod
	def _ready(self):
		print("##########start#############")
		self.velocity = 0
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner().run(suite)
		if(len(res.failures) == 0):
			self.get_tree().quit(0)
		else:
			self.get_tree().quit(1)

