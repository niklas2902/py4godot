import unittest

from py4godot.classes.Node3D import Node3D
from TestObject import TestObject


class PythonTest(unittest.TestCase):
	test_object: TestObject

	def __init__(self, methodName='runSignalTest', test_object: TestObject = None):
		super().__init__(methodName)
		self.test_object = test_object

	def test_global_position(self):
		self.test_object.global_position.x = 1
		self.assertEqual(1, self.test_object.global_position.x)
