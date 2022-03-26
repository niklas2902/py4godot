import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	def test_set(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		self.assertEqual(str(dictionary.get(("key"))), ("value"))
		dictionary[("key2")] =  ("value2")
		self.assertEqual(str(dictionary.get(("key2"))), ("value2"))
	
	def test_copy(self):
		# TODO: this seems not to work right, as the values is added to both dictionaries
		dictionary = Dictionary()
		dictionary.set("key", "value")
		self.assertEqual(str(dictionary.get(("key"))), ("value"))
		dictionary[("key2")] =  ("value2")
		self.assertEqual(str(dictionary.get(("key2"))), ("value2"))
		
		dic_copy = Dictionary.new_copy(dictionary)
		self.assertEqual(dic_copy, dictionary)
		
		dic_copy[("key3")] = ("Value3")
		print(dic_copy.size())
		self.assertEqual(dic_copy, dictionary)
	
	def test_size(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		self.assertEqual(dictionary.size(), 1)
	
	def test_empty(self):
		dictionary = Dictionary()
		self.assertTrue(dictionary.empty())
	
	def test_clear(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		dictionary[("key2")] =  ("value2")
		dictionary.clear()
		self.assertTrue(dictionary.empty())
	
	def test_has(self):
		dictionary = Dictionary()
		dictionary.set("key", "value")
		dictionary["key2"] =  "value2"
		self.assertTrue(dictionary.has(("key")))
		self.assertFalse(dictionary.has(("key3")))
	
	def test_has_all(self):
		dictionary = Dictionary()
		array = Array()
		array.append("key")
		dictionary.set(("key"), ("value"))
		dictionary[("key2")] =  ("value2")
		self.assertTrue(dictionary.has_all(array))
		array.append("key1")
		self.assertFalse(dictionary.has_all(array))
	
	def test_erase(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		dictionary[("key2")] =  ("value2")
		dictionary.erase(("key2"))
		self.assertFalse(dictionary.has(("key2")))
	
	def test_keys(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		dictionary[("key2")] =  ("value2")
		
		self.assertEqual(dictionary.keys().size(), 2)
		self.assertEqual(str(dictionary.keys()[0]), "key")
		self.assertEqual(str(dictionary.keys()[1]), "key2")
	
	def test_values(self):
		dictionary = Dictionary()
		dictionary.set(("key"), ("value"))
		dictionary[("key2")] =  ("value2")
		
		self.assertEqual(dictionary.values().size(), 2)
		self.assertEqual(str(dictionary.values()[0]), "value")
		self.assertEqual(str(dictionary.values()[1]), "value2")
	
	def test_next_(self):
		dictionary = Dictionary()
		dictionary.set("key", "value")
		dictionary["key2"] =  "value2"
		
		self.assertEqual(str(dictionary.next_(("key"))), "key2")
		self.assertEqual(dictionary.next_(("key2")), None)
		
