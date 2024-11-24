import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):
	def test_append(self):
		arr = Array()
		arr.append(1)
		print(type(arr[0]))
		self.assertEqual(arr.get(0), 1)
		self.assertEqual(arr[0], 1)

	def test_set(self):
		arr = Array()
		arr.append(1)
		arr.set(0,100)
		print(arr.get(0))
		self.assertEqual(arr.get(0), 100)
	
	def test_clear(self):
		arr = Array()
		arr.append(1)
		arr.clear()
		self.assertTrue(arr.empty())
	
	def test_count(self):
		arr = Array()
		self.assertEqual(arr.count(1), 0)
		arr.append(1)
		self.assertEqual(arr.count(1), 1)
	
	def test_erase(self):
		arr = Array()
		arr.append(1)
		arr.erase(1)
		self.assertEqual(arr.count(1), 0)
	
	def test_front(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		self.assertEqual(arr.front(), 1)
	
	
	def test_back(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		self.assertEqual(arr.back(), 2)
	
	def test_find(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.append(1)
		self.assertEqual(arr.find(1,0), 0)
		self.assertEqual(arr.find(1,1), 2)
	
	def test_find_last(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.append(1)
		self.assertEqual(arr.find_last(1), 2)
	
	def test_has(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.append(1)
		self.assertTrue(arr.has(1))
		self.assertFalse(arr.has(10))
	
	def test_hash(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.append(1)
		self.assertEqual(arr.hash(), 2086474761)
	
	def test_insert(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.insert(1,3)
		arr.append(1)
		self.assertEqual(arr.get(1), 3)
	
	def test_pop_front(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		self.assertEqual(arr.pop_front(), 1)
	
	def test_pop_back(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		self.assertEqual(arr.pop_back(), 2)
	
	def test_psuh_front(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.push_front(3)
		self.assertEqual(arr.pop_front(), 3)
	
	def test_push_back(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.push_back(3)
		self.assertEqual(arr.pop_back(), 3)
	
	def test_remove(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.push_back(3)
		arr.remove(1)

	
	def test_resize(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.push_back(3)
		arr.resize(1)
		self.assertEqual(arr.size(), 1)
	
	def test_rfind(self):
		arr = Array()
		arr.append(1)
		arr.append(2)
		arr.push_back(3)
		arr.push_back(1)
		self.assertEqual(arr.rfind(1,3), 3)
		self.assertEqual(arr.rfind(1,1), 0)
	
	def test_sort(self):
		arr = Array()
		arr.append(1)
		arr.append(3)
		arr.push_back(2)
		arr.push_back(1)
		arr.sort()	
		self.assertEqual(arr.get(0), 1)
		self.assertEqual(arr.get(1), 1)
		self.assertEqual(arr.get(2), 2)
		self.assertEqual(arr.get(3), 3)
	
