from py4godot.enums.enums import *
from py4godot.classes.Node3D import *
from py4godot.utils.utils import get_tree
from py4godot.pluginscript_api.utils.annotations import *
import PythonTest
import unittest

class PrintStream:
	def write(self, msg):
		print(msg, end='')

	def flush(self):
		pass

@gdclass
class TestRunner(Node3D):

	def __init__(self):
		print("__init__")
	@gdmethod
	def _ready(self):
		print("##########start#############")
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner(stream=PrintStream()).run(suite)
		import sys
		if len(res.failures) == 0:
			get_tree(self).quit(0)
		else:
			get_tree(self).quit(1)
