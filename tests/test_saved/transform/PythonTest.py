import unittest

from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):

	def test_new_with_axis_origin(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(0,0,0))
		self.assertEqual(transform, Transform(Basis(), Vector3(0,0,0)) )
	
	def test_set_basis(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(0,0,0))
		transform.set_basis(Basis.new_with_rows(Vector3(3,0,0), Vector3(0,3,0), Vector3(0,0,3)))
		self.assertEqual(transform.get_basis(), Basis.new_with_rows(Vector3(3,0,0), Vector3(0,3,0), Vector3(0,0,3)))
	
	def test_set_origin(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(0,0,0))
		transform.set_origin(Vector3(1,2,3))
		self.assertEqual(transform.get_origin(), Vector3(1,2,3))
	
	def test_inverse(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.inverse()
		self.assertEqual(transform, Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(-1,-2,-3)))
	
	def test_affine_inverse(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.affine_inverse()
		self.assertEqual(transform, Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(-1,-2,-3)))
	
	def test_orthonormalized(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.orthonormalized()
		self.assertEqual(transform, 
		Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3)))
	
	def test_rotated(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.rotated(Vector3(1,0,0), 1.5707963267948966)
		self.assertEqual(str(transform),"1, 0, 0, 0, -0, -1, 0, 1, -0 - 1, -3, 2" )
	
	def test_scaled(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.scaled(Vector3(2,3,4))
		self.assertEqual(transform, Transform.new_with_axis_origin(Vector3(2,0,0),Vector3(0,3,0), Vector3(0,0,4), Vector3(2,6,12)))
	
	def test_looking_at(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.looking_at(Vector3(3,3,3), Vector3(0,0,1))
		self.assertEqual(str(transform), "0.447214, 0, -0.894427, -0.894427, 0, -0.447214, 0, 1, 0 - 1, 2, 3")
	
	def test_xform_plane(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_plane(Plane(1,2,3,4))
		self.assertEqual(str(transform), "0.267261, 0.534522, 0.801784, 18.708286")
	
	def test_xform_inv_plane(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_inv_plane(Plane(1,2,3,4))
		self.assertEqual(str(transform), "0.267261, 0.534522, 0.801784, 11.224972")
	
	def test_xform_aabb(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_aabb(AABB(Vector3(1,1,1,), Vector3(1,2,3)))
		self.assertEqual(str(transform), "2, 3, 4 - 1, 2, 3")
	
	def test_xform_inv_aabb(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_inv_aabb(AABB(Vector3(1,1,1,), Vector3(1,2,3)))
		self.assertEqual(str(transform), "0, -1, -2 - 1, 2, 3")
	
	def test_xform_inv_vector3(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_vector3(Vector3(1,2,3))
		self.assertEqual(str(transform), "0, 0, 0")
	
	
	def test_xform_inv_vector3(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform = transform.xform_inv_vector3(Vector3(1,2,3))
		self.assertEqual(str(transform), "0, 0, 0")
	
	def test_mult(self):
		transform = Transform.new_with_axis_origin(Vector3(1,0,0),Vector3(0,1,0), Vector3(0,0,1), Vector3(1,2,3))
		transform2 = Transform.new_with_axis_origin(Vector3(2,0,0),Vector3(0,3,0), Vector3(0,0,4), Vector3(1,2,3))
		self.assertEqual(transform*transform2, Transform.new_with_axis_origin(Vector3(2,0,0),Vector3(0,3,0), Vector3(0,0,4), Vector3(2,4,6)))
		self.assertEqual(transform.mult(transform2), Transform.new_with_axis_origin(Vector3(2,0,0),Vector3(0,3,0), Vector3(0,0,4), Vector3(2,4,6)))
