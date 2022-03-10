import unittest
from py4godot import Dictionary, Variant, Array


class PythonTest(unittest.TestCase):
	def test_set(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		self.assertEqual(dictionary.get(Variant("key")), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		self.assertEqual(dictionary.get(Variant("key2")), Variant("value2"))
	
	def test_copy(self):
		# TODO: this seems not to work right, as the values is added to both dictionaries
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		self.assertEqual(dictionary.get(Variant("key")), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		self.assertEqual(dictionary.get(Variant("key2")), Variant("value2"))
		
		dic_copy = Dictionary.new_copy(dictionary)
		self.assertEqual(dic_copy, dictionary)
		
		dic_copy[Variant("key3")] = Variant("Value3")
		print(dic_copy.size())
		self.assertEqual(dic_copy, dictionary)
	
	def test_size(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		self.assertEqual(dictionary.size(), 1)
	
	def test_empty(self):
		dictionary = Dictionary()
		self.assertTrue(dictionary.empty())
	
	def test_clear(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		dictionary.clear()
		self.assertTrue(dictionary.empty())
	
	def test_has(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		self.assertTrue(dictionary.has(Variant("key")))
		self.assertFalse(dictionary.has(Variant("key3")))
	
	def test_has_all(self):
		dictionary = Dictionary()
		array = Array()
		array.append(Variant("key"))
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		self.assertTrue(dictionary.has_all(array))
		array.append(Variant("key1"))
		self.assertFalse(dictionary.has_all(array))
	
	def test_erase(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		dictionary.erase(Variant("key2"))
		self.assertFalse(dictionary.has(Variant("key2")))
	
	def test_keys(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		
		self.assertEqual(dictionary.keys().size(), 2)
		self.assertEqual(dictionary.keys()[0], Variant("key"))
		self.assertEqual(dictionary.keys()[1], Variant("key2"))
	
	def test_values(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		
		self.assertEqual(dictionary.values().size(), 2)
		self.assertEqual(dictionary.values()[0], Variant("value"))
		self.assertEqual(dictionary.values()[1], Variant("value2"))
	
	def test_next_(self):
		dictionary = Dictionary()
		dictionary.set(Variant("key"), Variant("value"))
		dictionary[Variant("key2")] =  Variant("value2")
		
		#TODO: check this
		print(dictionary.next_(Variant("key2")))
		
		print(dictionary.next_(Variant("key")).get_converted_value())
		self.assertEqual(dictionary.next_(Variant("key")), Variant("key2"))
		self.assertEqual(dictionary.next_(Variant("key2")), None)
		
