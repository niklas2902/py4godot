from py4godot.classes.core import NodePath
from py4godot.enums.enums import *
from py4godot.pluginscript_api.utils.annotations import *
from py4godot.classes.Node3D import *
from py4godot.properties import gdproperty
from PythonTest import PythonTest
import unittest

class PrintStream:
	def write(self, msg):
		print(msg, end='')

	def flush(self):
		pass


@gdclass
class TestRunner(Node3D):
	test_object_path: NodePath = gdproperty(NodePath, NodePath())

	@gdmethod
	def _process(self, delta: float) -> None:
		print("##########start#############")
		test_object = self.get_node(self.test_object_path).get_pyscript()

		suite = unittest.TestSuite()

		suite.addTest(PythonTest("test_global_position", test_object=test_object))
		suite.addTest(PythonTest("test_get_object_from_array", test_object=test_object))
		suite.addTest(PythonTest("test_constants", test_object=test_object))
		suite.addTest(PythonTest("test_constants_throw_error", test_object=test_object))
		suite.addTest(PythonTest("test_meta", test_object=test_object))
		suite.addTest(PythonTest("test_calling_variant", test_object=test_object))
		suite.addTest(PythonTest("test_array_add", test_object=test_object))
		suite.addTest(PythonTest("test_call_deferred", test_object=test_object))
		res = unittest.TextTestRunner(stream=PrintStream()).run(suite)
		if len(res.failures) == 0:
			self.get_tree().quit(0)
		else:
			self.get_tree().quit(1)
