import unittest

from py4godot.classes.core import *

class PythonTest(unittest.TestCase):

	def test_getting_from_packed_array(self):
		pa = PackedByteArray.from_list([1,2,3])
		self.assertEqual(pa.to_list(), [1,2,3])
		self.assertEqual(list(pa.get_memory_view()), [1,2,3])

	def test_adding_to_packed_array(self):
		pa = PackedByteArray.from_list([1,2,3])
		pa.push_back(4)
		self.assertEqual(pa.to_list(), [1,2,3,4])
		self.assertEqual(list(pa.get_memory_view()), [1,2,3,4])

	def test_removing_from_packed_array(self):
		pa = PackedByteArray.from_list([1,2,3])
		pa.remove_at(0)
		self.assertEqual(pa.to_list(), [2,3])
		self.assertEqual(list(pa.get_memory_view()), [2,3])

	def test_manipulating_with_memory_view(self):
		pa = PackedByteArray.from_list([1,2,3])
		pa.get_memory_view()[0] = 4
		self.assertEqual(pa.to_list(), [4,2,3])
		self.assertEqual(list(pa.get_memory_view()), [4,2,3])

	def test_len(self):
		pa = PackedByteArray.from_list([1, 2, 3])
		self.assertEqual(len(pa), 3)

	def test_packedVector2Array(self):
		pa = PackedVector2Array.new0()
		pa.append(Vector2.new3(0,1))
		self.assertEqual(pa[0], Vector2.new3(0,1))
		self.assertEqual(pa[-1], Vector2.new3(0, 1))
		self.assertEqual(pa.get(0), Vector2.new3(0, 1))

	def test_packedVector2Array_setitem(self):
		pa = PackedVector2Array.new0()
		pa.append(Vector2.new3(0,1))
		pa[0] = Vector2.new3(1,1)
		print(pa[0])
		self.assertEqual(pa[0], Vector2.new3(1,1))

		pa.get(0, Vector2.new3(2, 1))
		self.assertEqual(pa[0], Vector2.new3(2, 1))


		pa.append(Vector2.new3(1,1))
		pa[-1] = Vector2.new3(2,2)
		self.assertEqual(pa[-1], Vector2.new3(2, 2))

	def test_error(self):
		pa = PackedVector2Array.new0()
		pa.append(Vector2.new3(0,1))
		with self.assertRaises(IndexError) as cm:
			_ = pa[100]
		self.assertEqual(str(cm.exception), "index '100' out of range")

		with self.assertRaises(IndexError) as cm:
			_ = pa[-100]
		self.assertEqual(str(cm.exception), "index '-100' out of range")
