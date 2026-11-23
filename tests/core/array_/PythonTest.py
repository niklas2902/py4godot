import unittest
from py4godot.pluginscript_api.utils.annotations import *
from py4godot.classes.core import Vector3, Array, PackedInt32Array, Dictionary

class PythonTest(unittest.TestCase):
	def test_append(self):
		arr = Array.new0()
		arr.append(1)
		print(type(arr[0]))
		self.assertEqual(arr.get(0), 1)
		self.assertEqual(arr[0], 1)

	def test_set(self):
		arr = Array.new0()
		arr.append(1)
		arr.set(0,100)
		print(arr.get(0))
		self.assertEqual(arr.get(0), 100)

	def test_clear(self):
		arr = Array.new0()
		arr.append(1)
		arr.clear()
		self.assertTrue(len(arr) == 0)

	def test_int_typed_array(self):
		arr = Array[int].new0()
		arr.append(1)
		arr.append("str")
		self.assertTrue(len(arr) == 1)


	def test_vector3_typed_array(self):
		arr = Array[Vector3].new0()
		arr.append(Vector3.new3(1,1,1))
		arr.append(1)
		self.assertTrue(len(arr) == 1)
