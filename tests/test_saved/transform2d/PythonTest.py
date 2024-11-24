import unittest

from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	def test_new_with_axis_origin(self):
		transform = Transform2D.new_with_axis_origin(Vector2(1,0), Vector2(0,1), Vector2(1,1))
		self.assertEqual(transform, Transform2D(0, Vector2(1,1)))
		
	def test_inverse(self):
		transform = Transform2D(0, Vector2(1,1))
		self.assertEqual(str(transform.inverse()), "1, -0, 0, 1, -1, -1")
		
	def test_get_rotation(self):
		transform = Transform2D(0.5, Vector2(1,1))
		self.assertEqual(transform.get_rotation(), 0.5)
	
	def test_get_origin(self):
		transform = Transform2D.new_with_axis_origin(Vector2(1,0), Vector2(0,1), Vector2(1,2))
		self.assertEqual(transform.get_origin(), Vector2(1, 2))
	
	def test_get_scale(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,1), Vector2(1,2))
		self.assertEqual(transform.get_scale(), Vector2(2,1))
	
	def test_orthonormalized(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,1), Vector2(1,2))
		self.assertTrue(transform.orthonormalized())
	
	def test_rotated(self):
		transform = Transform2D(0, Vector2(1,1))
		transform = transform.rotated(0.5)
		self.assertEqual(transform.get_rotation(), 0.5)
	
	def test_scaled(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		
		self.assertEqual(transform.scaled(Vector2(2,3)), 
		Transform2D.new_with_axis_origin(Vector2(4,0), Vector2(0,12), Vector2(6,15)))
	
	def test_xform_vector2(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		transform = transform.xform_vector2(Vector2(2,3))
		self.assertEqual(transform, Vector2(7,17))

	def test_xform_inv_vector2(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		transform = transform.xform_inv_vector2(Vector2(2,3))
		self.assertEqual(transform, Vector2(-2,-8))
	
	def test_interpolate_with(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		transform = transform.interpolate_with(Transform2D.new_with_axis_origin(Vector2(-1,0),
		Vector2(0,1), Vector2(1,2)), 0.5)
		self.assertEqual(str(transform), "-0, -1.5, 1.5, -0, 2, 3.5")
	
	def test_xform_rect2(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		rect = transform.xform_rect2(Rect2(1,2,4,5))
		self.assertEqual(rect, Rect2(5,13,8,20))
		
	def test_xform_inv_rect2(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,4), Vector2(3,5))
		rect = transform.xform_inv_rect2(Rect2(1,2,4,5))
		self.assertEqual(rect, Rect2(-4,-12,8,20))
