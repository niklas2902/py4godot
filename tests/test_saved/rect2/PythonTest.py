import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):

	def test_init(self):
		rect = Rect2(1, 1, 1, 1)
		self.assertEqual(rect.get_size(), Vector2(1, 1))
		self.assertEqual(rect.get_position(), Vector2(1, 1))

		rect = Rect2(1, 2, 1, 1)
		self.assertEqual(rect.get_position(), Vector2(1, 2))
		self.assertEqual(rect.get_size(), Vector2(1, 1))

		rect = Rect2(1, 1, 3, 1)
		self.assertEqual(rect.get_position(), Vector2(1, 1))
		self.assertEqual(rect.get_size(), Vector2(3, 1))

		rect = Rect2(7, 1, 1, 6)
		self.assertEqual(rect.get_position(), Vector2(7, 1))
		self.assertEqual(rect.get_size(), Vector2(1, 6))

		rect = Rect2(1, 2, 3, 4)
		self.assertEqual(rect.get_position(), Vector2(1, 2))
		self.assertEqual(rect.get_size(), Vector2(3, 4))
		
		rect = Rect2(1, 2, 3, -4)
		self.assertEqual(rect.get_position(), Vector2(1, 2))
		self.assertEqual(rect.get_size(), Vector2(3, -4))

	def test_new_with_position_and_size(self):
		rect = Rect2.new_with_position_and_size(Vector2(1, 1), Vector2(1, 1))
		self.assertEqual(rect.get_size(), Vector2(1, 1))
		self.assertEqual(rect.get_position(), Vector2(1, 1))

		rect = Rect2.new_with_position_and_size(Vector2(1, 2), Vector2(1, 1))
		self.assertEqual(rect.get_position(), Vector2(1, 2))
		self.assertEqual(rect.get_size(), Vector2(1, 1))

		rect = Rect2.new_with_position_and_size(Vector2(1, 1), Vector2(3, 1))
		self.assertEqual(rect.get_position(), Vector2(1, 1))
		self.assertEqual(rect.get_size(), Vector2(3, 1))

		rect = Rect2.new_with_position_and_size(Vector2(7, 1), Vector2(1, 6))
		self.assertEqual(rect.get_position(), Vector2(7, 1))
		self.assertEqual(rect.get_size(), Vector2(1, 6))

		rect = Rect2.new_with_position_and_size(Vector2(1, 2), Vector2(3, 4))
		self.assertEqual(rect.get_position(), Vector2(1, 2))
		self.assertEqual(rect.get_size(), Vector2(3, 4))

	def test_get_area(self):
		self.assertEqual(Rect2(0,0,0,0).get_area(), 0)
		self.assertEqual(Rect2(0,0,2,2).get_area(), 4)
		self.assertEqual(Rect2(0,0,-3,2).get_area(), -6)
		self.assertEqual(Rect2(2,0,-3,2).get_area(), -6)
	
	def test_intersects(self):
		self.assertEqual(Rect2(0,0,0,0).intersects(Rect2(0,0,0,0)), False)
		self.assertEqual(Rect2(0,0,1,1).intersects(Rect2(0,0,1,1)), True)
		self.assertEqual(Rect2(0,0,2,2).intersects(Rect2(-1,-1,2,2)), True)
		self.assertEqual(Rect2(2,2,2,2).intersects(Rect2(0,0,2,2)), False)

	def test_encloses(self):
		self.assertEqual(Rect2(0,0,0,0).encloses(Rect2(0,0,0,0)), True)
		self.assertEqual(Rect2(0,0,1,1).encloses(Rect2(0,0,1,1)), True)
		self.assertEqual(Rect2(-1,-1,2,2).encloses(Rect2(-1,-1,2,2)), True)
		self.assertEqual(Rect2(2,2,2,2).encloses(Rect2(0,0,2,2)), False)
		self.assertEqual(Rect2(-1, -1, 4, 4).encloses(Rect2(0, 0, 2, 2)), True)

	def test_has_no_area(self):
		self.assertTrue(Rect2(1, 1, 0, 0).has_no_area())
		self.assertTrue(Rect2(1, 0, 0, 0).has_no_area())
		self.assertTrue(Rect2(0, 0, 0, 0).has_no_area())

	def test_clip(self):
		self.assertEqual(Rect2(1,1,1,1).clip(Rect2(2,0,2,2)), Rect2(0,0,0,0))
	
	def test_merge(self):
		self.assertEqual(Rect2(1,1,1,1).merge(Rect2(0,0,4,4)), Rect2(0,0,4,4))
		self.assertEqual(Rect2(0,0,0,0).merge(Rect2(4,4,4,4)), Rect2(0,0,8,8))
	
	def test_has_point(self):
		print(Rect2(0,0,2,2).has_point(Vector2(1,1)))
		self.assertTrue(Rect2(0,0,2,2).has_point(Vector2(1,1)))
		self.assertTrue(Rect2(0,0,2,2).has_point(Vector2(0,0)))
		self.assertFalse(Rect2(0,0,2,2).has_point(Vector2(2,2)))
		self.assertFalse(Rect2(0,0,2,2).has_point(Vector2(-1,-1)))
	
	def test_grow(self):
		for i in range(1,10):
			self.assertEqual(Rect2(0,0,2,2).grow(i), Rect2(-i,-i,2+2*i, 2+2*i))
	
	def test_expand(self):
		self.assertEqual(Rect2(0,0,1,1).expand(Vector2(2,1)), Rect2(0,0,2,1))
		self.assertEqual(Rect2(0,0,1,1).expand(Vector2(-1,1)), Rect2(-1,0,2,1))
		self.assertEqual(Rect2(0,0,1,1).expand(Vector2(1,4)), Rect2(0,0,1,4))
	
	def test_position(self):
		rect = Rect2(0, 0, 1, 1)
		rect.set_position(Vector2(1,1,))
		self.assertEqual(rect.get_position(), Vector2(1, 1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_position(Vector2(-1,1,))
		self.assertEqual(rect.get_position(), Vector2(-1, 1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_position(Vector2(1,-1,))
		self.assertEqual(rect.get_position(), Vector2(1, -1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_position(Vector2(-1,-1,))
		self.assertEqual(rect.get_position(), Vector2(-1, -1))

	def test_size(self):
		rect = Rect2(0, 0, 1, 1)
		rect.set_size(Vector2(1,1,))
		self.assertEqual(rect.get_size(), Vector2(1, 1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_size(Vector2(-1,1,))
		self.assertEqual(rect.get_size(), Vector2(-1, 1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_size(Vector2(1,-1,))
		self.assertEqual(rect.get_size(), Vector2(1, -1))
		
		rect = Rect2(0, 0, 1, 1)
		rect.set_size(Vector2(-1,-1,))
		self.assertEqual(rect.get_size(), Vector2(-1, -1))
