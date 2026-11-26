import unittest
from py4godot.classes.core import Vector3, Array, Dictionary


class PythonTest(unittest.TestCase):
	def test_set(self):
		dictionary = Dictionary.new0()
		dictionary["key1"] = 1
		dictionary.set("key2", 2)
		self.assertEqual(dictionary.get("key1"), 1)
		self.assertEqual(dictionary["key2"], 2)

	def test_clear(self):

		dictionary = Dictionary.new0()
		dictionary["key1"] = 1
		dictionary.set("key2",2)
		self.assertEqual(dictionary.get("key1"), 1)
		self.assertEqual(dictionary.get("key2"), 2)
		dictionary.clear()
		self.assertEqual(len(dictionary), 0)

	def test_typed_dictionary(self):
		dictionary = Dictionary[str, int].new0()
		dictionary["key1"] = 1
		dictionary.set("key2",2)
		self.assertEqual(dictionary.get("key1"), 1)
		self.assertEqual(dictionary.get("key2"), 2)

	def test_typed_dictionary_vector3(self):
		dictionary = Dictionary[str, Vector3].new0()
		dictionary["key1"] = Vector3.new0()
		self.assertEqual(dictionary.get("key1"), Vector3.new0())


	def test_typed_dictionary_fail(self):
		dictionary = Dictionary[str, Vector3].new0()
		dictionary[1] = Vector3.new0()
		self.assertEqual(len(dictionary), 0)
		#dictionary["key"] = "hello"
		#self.assertEqual(len(dictionary), 0)
