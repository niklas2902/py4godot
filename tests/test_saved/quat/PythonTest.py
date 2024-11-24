import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	
	def test_init(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(quat, Quat(1,2,3,4))
	
	def test_new_with_axis_angle(self):
		quat = Quat.new_with_axis_angle(Vector3(1,0,0), 1.5707963)
		self.assertEqual(str(quat), "0.707107, 0, 0, 0.707107")
	
	def test_set_x(self):
		quat = Quat(1,2,3,4)
		quat.set_x(10)
		self.assertEqual(quat, Quat(10,2,3,4))
	
	def test_set_y(self):
		quat = Quat(1,2,3,4)
		quat.set_y(10)
		self.assertEqual(quat, Quat(1,10,3,4))
	
	def test_set_z(self):
		quat = Quat(1,2,3,4)
		quat.set_z(10)
		self.assertEqual(quat, Quat(1,2,10,4))
	
	def test_set_w(self):
		quat = Quat(1,2,3,4)
		quat.set_w(10)
		self.assertEqual(quat, Quat(1,2,3,10))
	
	def test_length(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(quat.length(),  5.4772257804870605)
	
	def test_length_squared(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(quat.length_squared(),  30)
	
	def test_is_normalized(self):
		quat = Quat(1,0,0,0)
		self.assertTrue(quat.is_normalized())
		
	def test_normalized(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(str(quat.normalized()), "0.182574, 0.365148, 0.547723, 0.730297")
	
	def test_inverse(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(quat.inverse(), Quat(-1,0,0,0))
	
	def test_dot(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(quat.dot(Quat(1,1,0,0)), 1)
	
	def test_xform(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(quat.xform(Vector3(1,0,0)), Vector3(1,0,0))
	
	def test_slerp(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(quat.slerp(Quat(1,0,0,0), 1.5707963), Quat(1,0,0,0))

	def test_slerpni(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(quat.slerpni(Quat(1,0,0,0), 1.5707963), Quat(1,0,0,0))
	
	def test_cubic_slerp(self):
		quat = Quat(1,0,0,0)
		self.assertEqual(str(quat.cubic_slerp(Quat(1,0,0,0),Quat(0,1,0,0), Quat(0,0,1,0), 1.5707963)), "-0.947706, 0.249319, -0.199231, -0")
	
	def test_mult(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(quat*3, Quat(3,6,9,12))
		self.assertEqual(quat.mult(3), Quat(3,6,9,12))
	
	def test_add(self):
		quat = Quat(1,2,3,4)
		quat2 = Quat(5,6,7,8)
		self.assertEqual(quat + quat2, Quat(6,8,10,12))
		self.assertEqual(quat.add(quat2), Quat(6,8,10,12))
	def test_div(self):
		quat = Quat(6,8,10,12)
		self.assertEqual(quat/2, Quat(3,4,5,6))
		self.assertEqual(quat.div(2), Quat(3,4,5,6))
	
	def test_sub(self):
		quat = Quat(1,2,3,4)
		quat2 = Quat(5,6,7,8)
		self.assertEqual(quat2- quat, Quat(4,4,4,4))
		self.assertEqual(quat2.sub(quat), Quat(4,4,4,4))
	
	def test_neg(self):
		quat = Quat(1,2,3,4)
		self.assertEqual(-quat, Quat(-1,-2,-3,-4))
		self.assertEqual(quat.neg(), Quat(-1,-2,-3,-4))
