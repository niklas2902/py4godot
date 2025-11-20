import unittest

from py4godot.classes.Node3D import Node3D
from TestObject import TestObject
from py4godot.classes.core import Array, Vector3, PackedByteArray
from py4godot.utils.print_tools import print_error


class PythonTest(unittest.TestCase):
	test_object: TestObject

	def __init__(self, methodName='runSignalTest', test_object: TestObject = None):
		super().__init__(methodName)
		self.test_object = test_object

	def test_global_position(self):
		self.test_object.global_position.x = 1
		self.assertEqual(1, self.test_object.global_position.x)

	def test_get_object_from_array(self):
		a = Array.new0()
		a.push_back(self.test_object)
		o = a.get(0)
		self.assertEqual(o.get_class(), "Node3D")

	def test_constants(self):
		self.assertEqual(Vector3.UP, Vector3.new3(0,  1,  0))


	def test_constants_throw_error(self):
		with self.assertRaises(RuntimeError):
			up = Vector3.UP
			up.x = 1

	def test_meta(self):
		self.assertEqual(self.test_object.get_meta_object(), True)

	def test_calling_variant(self):
		self.assertEqual(self.test_object.call("variant_test_function", 1), 1)
		self.assertEqual(self.test_object.call("variant_test_function", "test"), "test")

		with self.assertRaises(ValueError) as cm:
			self.test_object.call("variant_test_function", [])
		self.assertEqual(
			str(cm.exception),
            "Unsupported type in varargs: list. Supported types are: Godot types (Vector3, Vector2, Array, Object, ...) and built-in types int, float, and bool."
		)

	def test_array_add(self):
		my_array = Array.new0()
		my_array.append("test")
		self.assertEqual(my_array.get(0), "test")

		with self.assertRaises(ValueError) as cm:
			my_array.append([])
	
	def test_get_text(self):
		self.assertEqual("我喜欢学习物理", self.test_object.get_text_edit_text())


	def test_call_deferred(self):
		packedbyteArray = PackedByteArray.from_list([1])
		self.test_object.call_deferred("test_function", packedbyteArray)



###############
