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


	def test_append_vector2(self):
		vector2_array = PoolVector2Array()
		vector2_array.append(Vector2(1,1))
		self.assertEqual(vector2_array[0], Vector2(1,1))

	def test_append_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.append(Vector2(1,1))
		vector2_array.append(Vector2(2,2))

		vector2_array2 = PoolVector2Array()
		vector2_array2.append_array(vector2_array)
		self.assertEqual(vector2_array2[0], Vector2(1,1))
		self.assertEqual(vector2_array2[1], Vector2(2,2))

	def test_insert_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.insert(0, Vector2(1,1))
		vector2_array.insert(0, Vector2(2,2))
		self.assertEqual(vector2_array[0], Vector2(2,2))
		self.assertEqual(vector2_array[1], Vector2(1,1))

	def test_push_back_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.push_back(Vector2(1,1))
		vector2_array.push_back(Vector2(2,2))
		self.assertEqual(vector2_array[0], Vector2(1,1))
		self.assertEqual(vector2_array[1], Vector2(2,2))

	def test_remove_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.push_back(Vector2(1,1))
		vector2_array.push_back(Vector2(2,2))
		vector2_array.remove(0)

		self.assertEqual(vector2_array[0], Vector2(2,2))

	def test_resize_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.push_back(Vector2(1,1))
		vector2_array.push_back(Vector2(2,2))
		vector2_array.resize(100)
		self.assertEqual(vector2_array.size(), 100)

	def test_set_pool_vector2_array(self):
		vector2_array = PoolVector2Array()
		vector2_array.push_back(Vector2(1,1))
		vector2_array.push_back(Vector2(2,2))
		vector2_array[0] = Vector2(3,3)
		self.assertEqual(vector2_array[0], Vector2(3,3))


	def test_append_color(self):
		color_array = PoolColorArray()
		color_array.append(Color(1,1,1))
		self.assertEqual(color_array[0], Color(1,1,1))

	def test_append_pool_color_array(self):
		vector2_array = PoolColorArray()
		vector2_array.append(Color(0,0,0))
		vector2_array.append(Color(1,1,1))

		vector2_array2 = PoolColorArray()
		vector2_array2.append_array(vector2_array)
		self.assertEqual(vector2_array2[0], Color(0,0,0))
		self.assertEqual(vector2_array2[1], Color(1,1,1))

	def test_insert_pool_color_array(self):
		color_array = PoolColorArray()
		color_array.insert(0, Color(1,1,1))
		color_array.insert(0, Color(0,0,0))
		self.assertEqual(color_array[0], Color(0,0,0))
		self.assertEqual(color_array[1], Color(1,1,1))

	def test_push_back_pool_color_array(self):
		color_array = PoolColorArray()
		color_array.push_back(Color(1,1,1))
		color_array.push_back(Color(0,0,0))
		self.assertEqual(color_array[0], Color(1,1,1))
		self.assertEqual(color_array[1], Color(0,0,0))

	def test_remove_pool_color_array(self):
		color_array = PoolColorArray()
		color_array.push_back(Color(1,1,1))
		color_array.push_back(Color(0,0,0))
		color_array.remove(0)

		self.assertEqual(color_array[0], Color(0,0,0))

	def test_resize_pool_color_array(self):
		color_array = PoolColorArray()
		color_array.push_back(Color(1,1,1))
		color_array.push_back(Color(0,0,0))
		color_array.resize(100)
		self.assertEqual(color_array.size(), 100)

	def test_set_pool_color_array(self):
		color_array = PoolColorArray()
		color_array.push_back(Color(1,1,1))
		color_array.push_back(Color(0,0,0))
		color_array[0] = Color(0.1,0.1,0.1)
		self.assertEqual(color_array[0], Color(0.1,0.1,0.1))

	def test_append_byte(self):
		byte_array = PoolByteArray()
		byte_array.append(1)
		self.assertEqual(byte_array[0], 1)

	def test_append_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.append(1)
		byte_array.append(2)

		byte_array2 = PoolByteArray()
		byte_array2.append_array(byte_array)
		self.assertEqual(byte_array2[0], 1)
		self.assertEqual(byte_array2[1], 2)

	def test_insert_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.insert(0, 1)
		byte_array.insert(0, 2)
		self.assertEqual(byte_array[0], 2)
		self.assertEqual(byte_array[1], 1)

	def test_push_back_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.push_back(1)
		byte_array.push_back(2)
		self.assertEqual(byte_array[0], 1)
		self.assertEqual(byte_array[1], 2)

	def test_remove_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.push_back(1)
		byte_array.push_back(2)
		byte_array.remove(0)

		self.assertEqual(byte_array[0], 2)

	def test_resize_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.push_back(1)
		byte_array.push_back(2)
		byte_array.resize(100)
		self.assertEqual(byte_array.size(), 100)

	def test_set_pool_byte_array(self):
		byte_array = PoolByteArray()
		byte_array.push_back(1)
		byte_array.push_back(2)
		byte_array[0] = 3
		self.assertEqual(byte_array[0], 3)
