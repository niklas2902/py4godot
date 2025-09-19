import unittest

import PythonTest
from py4godot.classes import gdclass
from py4godot.classes.Node3D import Node3D


class PrintStream:
	def write(self, msg):
		print(msg, end='')

	def flush(self):
		pass

@gdclass
class TestRunner(Node3D):

	def _process(self, delta:float) -> None:
		print("##########start#############")
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner(stream=PrintStream()).run(suite)
		res_code = 0 if  len(res.failures) == 0 else 1
		self.get_tree().quit(res_code)
