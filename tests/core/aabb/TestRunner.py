from py4godot.enums.enums import *
from py4godot.classes.Node3D import *
from py4godot.pluginscript_api.utils.annotations import *
import PythonTest
import unittest

@gdclass
class TestRunner(Node3D):

	def __init__(self):
		print("__init__")
	@gdmethod
	def _ready(self):
		print("##########start#############")
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner().run(suite)
		if len(res.failures) == 0:
			self.get_tree().quit(0)
		else:
			self.get_tree().quit(1)
