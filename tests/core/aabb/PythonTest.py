import unittest

from py4godot.classes.core import *

class PythonTest(unittest.TestCase):
	
	def test_intersects(self):
		aabb = AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2))
		self.assertTrue(aabb.intersects(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 1, 1))))
		self.assertFalse(aabb.intersects(AABB.new2(Vector3.new3(-1, -1, -1), Vector3.new3(0, 0, 0))))
		self.assertFalse(aabb.intersects(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(0, 0, 0))))
	def test_get_position(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).get_position(), Vector3.new3(0, 0, 0))
		self.assertEqual(AABB.new2(Vector3.new3(1, 2, 3), Vector3.new3(2, 2, 2)).get_position(), Vector3.new3(1, 2, 3))

	def test_get_size(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).get_size(), Vector3.new3(2, 2, 2))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_size(), Vector3.new3(1, 2, 3))

	def test_get_area(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).get_volume(), 8)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_volume(), 6)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(0, 2, 2)).get_volume(), 0)

	def test_has_no_surface(self):
		self.assertFalse(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 0, 1)).has_volume())

	def test_encloses(self):
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).encloses(AABB.new2(Vector3.new3(0.5, 0.5, 0.5), Vector3.new3(1, 1, 1))))
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).encloses(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 1, 1))))
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).encloses(AABB.new2(Vector3.new3(1, 1, 1), Vector3.new3(1, 1, 1))))


	def test_intersection(self):
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).intersection(AABB.new2(Vector3.new3(1, 1, 1), Vector3.new3(2, 2, 2))))

	def test_intersects_plane(self):
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).intersects_plane(Plane.new6(1, 1, 1, 1)))
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).intersects_plane(Plane.new6(4, 4, 4, 4)))

	def test_intersects_segment(self):
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).intersects_segment(Vector3.new3(0, 0, 0), Vector3.new3(3, 3, 3)))
		self.assertFalse(AABB.new2(Vector3.new3(1, 1, 1), Vector3.new3(2, 2, 2)).intersects_segment(Vector3.new3(0, 0, 0), Vector3.new3(0, 0, 0)))

	def test_has_point(self):
		self.assertTrue(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).has_point(Vector3.new3(1, 1, 1)))
		self.assertFalse(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 2, 2)).has_point(Vector3.new3(-1, -1, -1)))

	def test_get_longest_axis(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_longest_axis(), Vector3.new3(0, 0, 1))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_longest_axis(), Vector3.new3(1, 0, 0))

	def test_get_longest_axis_index(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_longest_axis_index(), 2)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_longest_axis_index(), 0)

	def test_get_longest_axis_size(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_longest_axis_size(), 3)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_longest_axis_size(), 3)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 3, 1)).get_longest_axis_size(), 2)

	def test_get_shortest_axis(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_shortest_axis(), Vector3.new3(1, 0, 0))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_shortest_axis(), Vector3.new3(0, 0, 1))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 1, 3)).get_shortest_axis(), Vector3.new3(0, 1, 0))

	def test_get_shortest_axis_index(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_shortest_axis_index(), 0)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_shortest_axis_index(), 2)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 1, 3)).get_shortest_axis_index(), 1)

	def test_get_shortest_axis_size(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_shortest_axis_size(), 1)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 2, 1)).get_shortest_axis_size(), 1)
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(2, 1, 3)).get_shortest_axis_size(), 0.5)

	def test_expand(self):
		self.assertNotEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).expand(Vector3.new3(3, 3, 3)),
						 AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(3, 3, 3)))

	def test_get_endpoint(self):
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(0), Vector3.new3(0, 0, 0))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(1), Vector3.new3(0, 0, 3))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(2), Vector3.new3(0, 2, 0))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(3), Vector3.new3(0, 2, 3))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(4), Vector3.new3(1, 0, 0))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(5), Vector3.new3(1, 0, 3))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(6), Vector3.new3(1, 2, 0))
		self.assertEqual(AABB.new2(Vector3.new3(0, 0, 0), Vector3.new3(1, 2, 3)).get_endpoint(7), Vector3.new3(1, 2, 3))
