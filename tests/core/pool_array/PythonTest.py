import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):
	def test_append_int(self):
		int_array = PoolIntArray()
		int_array.append(1)
		self.assertEqual(int_array[0], 1)
	def test_append_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.append(1)
		int_array.append(2)
		
		int_array2 = PoolIntArray()
		int_array2.append_array(int_array)
		self.assertEqual(int_array2[0], 1)
		self.assertEqual(int_array2[1], 2)
	
	def test_insert(self):
		int_array = PoolIntArray()
		int_array.insert(0, 1)
		int_array.insert(0, 2)
		self.assertEqual(int_array[0], 2)
		self.assertEqual(int_array[1], 1)
	
	def test_push_back(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		self.assertEqual(int_array[0], 1)
		self.assertEqual(int_array[1], 2)

	def test_remove(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array.remove(0)
		
		self.assertEqual(int_array[0], 2)
	
	def test_resize(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array.resize(100)
		self.assertEqual(int_array.size(), 100)
	
	def test_set(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array[0] = 3
		self.assertEqual(int_array[0], 3)
