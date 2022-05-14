import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):
	def test_intersects(self):
		aabb = AABB(Vector3(0,0,0), Vector3(2,2,2))
		self.assertTrue(aabb.intersects(AABB(Vector3(0,0,0), Vector3(1,1,1))))
		self.assertFalse(aabb.intersects(AABB(Vector3(-1,-1,-1), Vector3(0,0,0))))
		self.assertFalse(aabb.intersects(AABB(Vector3(0,0,0), Vector3(0,0,0))))
		
	def test_get_position(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_position(), Vector3(0,0,0))
		self.assertEqual(AABB(Vector3(1,2,3), Vector3(2,2,2)).get_position(), Vector3(1,2,3))

	def test_get_size(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_size(), Vector3(2,2,2))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_size(), Vector3(1,2,3))

	def test_get_area(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_area(), 8)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_area(), 6)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(0,2,2)).get_area(), 0)

	def test_has_no_area(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,0,2)).has_no_area())
		self.assertFalse(AABB(Vector3(0,0,0), Vector3(2,1,2)).has_no_area())

	def has_no_surface(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(0,0,0)).has_no_area())
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(0,0,1)).has_no_area())
		self.assertFalse(AABB(Vector3(0,0,0), Vector3(1,0,1)).has_no_area())

	def test_encloses(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).encloses(AABB(Vector3(0.5,0.5,0.5), Vector3(1,1,1,))))
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).encloses(AABB(Vector3(0,0,0), Vector3(1,1,1,))))
		self.assertFalse(AABB(Vector3(0,0,0), Vector3(2,2,2)).encloses(AABB(Vector3(1,1,1), Vector3(1,1,1,))))

	def test_merge(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).merge(AABB(Vector3(1,1,1), Vector3(2,2,2,))),
		AABB(Vector3(0,0,0), Vector3(3,3,3)))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).merge(AABB(Vector3(3,3,3), Vector3(2,2,2,))),
		AABB(Vector3(0,0,0), Vector3(5,5,5)))

	def test_intersection(self):
		print(AABB(Vector3(0,0,0), Vector3(2,2,2)).intersection(AABB(Vector3(1,1,1), Vector3(2,2,2,))))
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).intersection(AABB(Vector3(1,1,1), Vector3(2,2,2,))))

	def test_intersects_plane(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).intersects_plane(Plane(1,1,1,1,)))
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).intersects_plane(Plane(4,4,4,4)))

	def test_intersects_segment(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).intersects_segment(Vector3(0,0,0), Vector3(3,3,3)))
		self.assertFalse(AABB(Vector3(1,1,1), Vector3(2,2,2)).intersects_segment(Vector3(0,0,0), Vector3(0,0,0)))
	def test_has_point(self):
		self.assertTrue(AABB(Vector3(0,0,0), Vector3(2,2,2)).has_point(Vector3(1,1,1)))
		self.assertFalse(AABB(Vector3(0,0,0), Vector3(2,2,2)).has_point(Vector3(-1,-1,-1)))
	
	def test_get_support(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_support(Vector3(1,0,0)), Vector3(0,2,2))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_support(Vector3(0,1,0)), Vector3(2,0,2))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,2,2)).get_support(Vector3(0,0,1)), Vector3(2,2,0))

	def test_get_longest_axis(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_longest_axis(),Vector3(0,0,1))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_longest_axis(),Vector3(1,0,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,3,1)).get_longest_axis(),Vector3(0,1,0))

	def test_get_longest_axis_index(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_longest_axis_index(),2)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_longest_axis_index(),0)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,3,1)).get_longest_axis_index(),1)

	def test_get_longest_axis_size(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_longest_axis_size(),3)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_longest_axis_size(),3)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,3,1)).get_longest_axis_size(),3)

	def test_get_shortest_axis(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_shortest_axis(),Vector3(1,0,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_shortest_axis(),Vector3(0,0,1))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,1,3)).get_shortest_axis(),Vector3(0,1,0))

	def test_get_shortest_axis_index(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_shortest_axis_index(),0)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_shortest_axis_index(),2)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,1,3)).get_shortest_axis_index(),1)


	def test_get_shortest_axis_size(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_shortest_axis_size(),1)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(3,2,1)).get_shortest_axis_size(),1)
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(2,1,3)).get_shortest_axis_size(),1)

	def test_grow(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).grow(3),AABB(Vector3(-3,-3,-3), Vector3(7,8,9)))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).grow(0),AABB(Vector3(0,0,0), Vector3(1,2,3)))


	def test_expand(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).expand(Vector3(3,3,3)),AABB(Vector3(0,0,0), Vector3(3,3,3)))

	def test_get_endpoint(self):
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(0), Vector3(0,0,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(1), Vector3(0,0,3))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(2), Vector3(0,2,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(3), Vector3(0,2,3))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(4), Vector3(1,0,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(5), Vector3(1,0,3))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(6), Vector3(1,2,0))
		self.assertEqual(AABB(Vector3(0,0,0), Vector3(1,2,3)).get_endpoint(7), Vector3(1,2,3))
