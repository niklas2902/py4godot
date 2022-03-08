import unittest
from py4godot import Array, Variant


class PythonTest(unittest.TestCase):
	def test_append(self):
		arr = Array()
		arr.append(Variant(1))
		self.assertEqual(arr.get(0).get_converted_value(), 1)
		self.assertEqual(arr[0].get_converted_value(), 1)

	def test_set(self):
		arr = Array()
		arr.append(Variant(1))
		arr.set(0,Variant(100))
		self.assertEqual(arr.get(0).get_converted_value(), 100)
	
	def test_clear(self):
		arr = Array()
		arr.append(Variant(1))
		arr.clear()
		self.assertTrue(arr.empty())
	
	def test_count(self):
		arr = Array()
		self.assertEqual(arr.count(Variant(1)), 0)
		arr.append(Variant(1))
		self.assertEqual(arr.count(Variant(1)), 1)
	
	def test_erase(self):
		arr = Array()
		arr.append(Variant(1))
		arr.erase(Variant(1))
		self.assertEqual(arr.count(Variant(1)), 0)
	
	def test_front(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		self.assertEqual(arr.front(), Variant(1))
	
	
	def test_back(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		self.assertEqual(arr.back(), Variant(2))
	
	def test_find(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.append(Variant(1))
		self.assertEqual(arr.find(Variant(1),0), 0)
		self.assertEqual(arr.find(Variant(1),1), 2)
	
	def test_find_last(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.append(Variant(1))
		self.assertEqual(arr.find_last(Variant(1)), 2)
	
	def test_has(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.append(Variant(1))
		self.assertTrue(arr.has(Variant(1)))
		self.assertFalse(arr.has(Variant(10)))
	
	def test_hash(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.append(Variant(1))
		self.assertEqual(arr.hash(), 2086474761)
	
	def test_insert(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.insert(1,Variant(3))
		arr.append(Variant(1))
		self.assertEqual(arr.get(1), Variant(3))
	
	def test_pop_front(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		self.assertEqual(arr.pop_front(), Variant(1))
	
	def test_pop_back(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		self.assertEqual(arr.pop_back(), Variant(2))
	
	def test_psuh_front(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.push_front(Variant(3))
		self.assertEqual(arr.pop_front(), Variant(3))
	
	def test_push_back(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.push_back(Variant(3))
		self.assertEqual(arr.pop_back(), Variant(3))
	
	def test_remove(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.push_back(Variant(3))
		arr.remove(1)

	
	def test_resize(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.push_back(Variant(3))
		arr.resize(1)
		self.assertEqual(arr.size(), 1)
	
	def test_rfind(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(2))
		arr.push_back(Variant(3))
		arr.push_back(Variant(1))
		self.assertEqual(arr.rfind(Variant(1),3), 3)
		self.assertEqual(arr.rfind(Variant(1),1), 0)
	
	def test_sort(self):
		arr = Array()
		arr.append(Variant(1))
		arr.append(Variant(3))
		arr.push_back(Variant(2))
		arr.push_back(Variant(1))
		arr.sort()	
		self.assertEqual(arr.get(0), Variant(1))
		self.assertEqual(arr.get(1), Variant(1))
		self.assertEqual(arr.get(2), Variant(2))
		self.assertEqual(arr.get(3), Variant(3))
	
