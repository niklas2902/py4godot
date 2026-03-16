from py4godot.classes.core import NodePath
from py4godot.enums.enums import *
from py4godot.classes.Node3D import *
from py4godot.properties import gdproperty
from py4godot.pluginscript_api.utils.annotations import *
from PythonTest import PythonTest
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
	def _process(self, delta:float) -> None:
		print("##########start#############")    
		suite = unittest.TestLoader().loadTestsFromTestCase(PythonTest)
		res = unittest.TextTestRunner(stream=PrintStream()).run(suite)
		res_code = 0 if  len(res.failures) == 0 else 1
		self.get_tree().quit(res_code)
