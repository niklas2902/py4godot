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
	
	def test_insert_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.insert(0, 1)
		int_array.insert(0, 2)
		self.assertEqual(int_array[0], 2)
		self.assertEqual(int_array[1], 1)
	
	def test_push_back_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		self.assertEqual(int_array[0], 1)
		self.assertEqual(int_array[1], 2)

	def test_remove_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array.remove(0)
		
		self.assertEqual(int_array[0], 2)
	
	def test_resize_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array.resize(100)
		self.assertEqual(int_array.size(), 100)
	
	def test_set_pool_int_array(self):
		int_array = PoolIntArray()
		int_array.push_back(1)
		int_array.push_back(2)
		int_array[0] = 3
		self.assertEqual(int_array[0], 3)

	def test_append_string(self):
		string_array = PoolStringArray()
		string_array.append("1")
		self.assertEqual(string_array[0], "1")

	def test_append_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.append("1")
		string_array.append("2")

		string_array2 = PoolStringArray()
		string_array2.append_array(string_array)
		self.assertEqual(string_array2[0], "1")
		self.assertEqual(string_array2[1], "2")

	def test_insert_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.insert(0, "1")
		string_array.insert(0, "2")
		self.assertEqual(string_array[0], "2")
		self.assertEqual(string_array[1], "1")

	def test_push_back_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.push_back("1")
		string_array.push_back("2")
		self.assertEqual(string_array[0], "1")
		self.assertEqual(string_array[1], "2")

	def test_remove_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.push_back("1")
		string_array.push_back("2")
		string_array.remove(0)

		self.assertEqual(string_array[0], "2")

	def test_resize_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.push_back("1")
		string_array.push_back("2")
		string_array.resize(100)
		self.assertEqual(string_array.size(), 100)

	def test_set_pool_string_array(self):
		string_array = PoolStringArray()
		string_array.push_back("1")
		string_array.push_back("2")
		string_array[0] = "3"
		self.assertEqual(string_array[0], "3")


	def test_append_vector3(self):
		vector3_array = PoolVector3Array()
		vector3_array.append(Vector3(1,1,1))
		self.assertEqual(vector3_array[0], Vector3(1,1,1))
	def test_append_pool_vector3_array(self):
		vector3_array = PoolVector3Array()
		vector3_array.append(Vector3(1,1,1))
		vector3_array.append(Vector3(2,2,2))

		vector3_array2 = PoolVector3Array()
		vector3_array2.append_array(vector3_array)
		self.assertEqual(vector3_array2[0], Vector3(1,1,1))
		self.assertEqual(vector3_array2[1], Vector3(2,2,2))

	def test_insert_pool_vector3_array(self):
		vector3_array = PoolVector3Array()
		vector3_array.insert(0, Vector3(1,1,1))
		vector3_array.insert(0, Vector3(2,2,2))
		self.assertEqual(vector3_array[0], Vector3(2,2,2))
		self.assertEqual(vector3_array[1], Vector3(1,1,1))

	def test_push_back_pool_vector3_array(self):
		vector3_array = PoolVector3Array()
		vector3_array.push_back(Vector3(1,1,1))
		vector3_array.push_back(Vector3(2,2,2))
		self.assertEqual(vector3_array[0], Vector3(1,1,1))
		self.assertEqual(vector3_array[1], Vector3(2,2,2))

	def test_remove_pool_vector3_array(self):
		int_array = PoolVector3Array()
		int_array.push_back(Vector3(1,1,1))
		int_array.push_back(Vector3(2,2,2))
		int_array.remove(0)

		self.assertEqual(int_array[0], Vector3(2,2,2))

	def test_resize_pool_vector3_array(self):
		int_array = PoolVector3Array()
		int_array.push_back(Vector3(1,1,1))
		int_array.push_back(Vector3(2,2,2))
		int_array.resize(100)
		self.assertEqual(int_array.size(), 100)

	def test_set_pool_vector3_array(self):
		int_array = PoolVector3Array()
		int_array.push_back(Vector3(1,1,1))
		int_array.push_back(Vector3(2,2,2))
		int_array[0] = Vector3(3,3,3)
		self.assertEqual(int_array[0], Vector3(3,3,3))
