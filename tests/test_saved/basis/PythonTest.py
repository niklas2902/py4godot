import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	def test_init_rows(self):
		b = Basis.new_with_rows(Vector3(1,0,0), Vector3(0,1,0), Vector3(0,0,1))
		self.assertEqual(b.get_axis(Vector3_Axis.X.value), Vector3(1,0,0))
		self.assertEqual(b.get_axis(Vector3_Axis.Y.value), Vector3(0,1,0))
		self.assertEqual(b.get_axis(Vector3_Axis.Z.value), Vector3(0,0,1))
	
	def test_init_angle(self):
		b = Basis.new_with_axis_and_angle(Vector3(1,0,0), 1.570796327)
		self.assertEqual(b.get_axis(Vector3_Axis.X.value), Vector3(1,0,0))
		self.assertEqual(b.get_axis(Vector3_Axis.Y.value).get_axis(2), 1)
		self.assertEqual(b.get_axis(Vector3_Axis.Z.value).get_axis(1), -1)
	
	def test_init_eulers(self):
		b = Basis.new_with_euler(Basis(), Vector3(1.570796327,0,0))
		self.assertEqual(b.get_axis(Vector3_Axis.X.value), Vector3(1,0,0))
		self.assertEqual(b.get_axis(Vector3_Axis.Y.value).get_axis(2), 1)
		self.assertEqual(b.get_axis(Vector3_Axis.Z.value).get_axis(1), -1)
	
	def test_inverse(self):
		self.assertEqual(Basis.new_with_rows(Vector3(2,0,0), Vector3(0,1,0), Vector3(0,0,1)).inverse(),
		 Basis.new_with_rows(Vector3(0.5,0,0), Vector3(0,1,0), Vector3(0,0,1)))
	
	def test_transposed(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,2,3), Vector3(1,2,3), Vector3(1,2,3)).transposed(), 
						 Basis.new_with_rows(Vector3(1,1,1), Vector3(2,2,2), Vector3(3,3,3)))
	
	def test_orthonormalized(self):
		self.assertEqual(str(Basis.new_with_rows(Vector3(1,2,3), Vector3(1,2,3), Vector3(1,2,3)).orthonormalized()),
		str(Basis.new_with_rows(Vector3(0.57735, 0.57735, -0.57735), Vector3(0.57735, 0.57735, -0.57735), 
		Vector3(0.57735, 0.57735, -0.57735))))
	
	def test_determinant(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,2,3), Vector3(1,2,3), Vector3(1,2,3)).determinant(),0)

	def test_rotated(self):
		self.assertEqual(Basis().rotated(Vector3(1,0,0), 1.570796327),
		Basis.new_with_axis_and_angle(Vector3(1,0,0), 1.570796327))
	
	def test_scaled(self):
		b = Basis()
		self.assertEqual(Basis().scaled(Vector3(1,2,3)),
		Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)))
	def test_get_scale(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_scale(), Vector3(1,2,3))
	
	def test_get_euler(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_euler(), Vector3(0,0,0))
	
	def test_tdotx(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).tdotx(Vector3(2,3,4)), 2)
	
	def test_doty(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).tdoty(Vector3(2,3,4)), 6)
	
	def test_dotz(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).tdotz(Vector3(2,3,4)), 12)
	
	def test_xform(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).xform(Vector3(2,3,4)), Vector3(2,6,12))
	
	def test_xform_inv(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).xform_inv(Vector3(2,3,4)), Vector3(2,6,12))
	
	def test_get_get_orthogonal_index(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_orthogonal_index(), 0)
	
	def test_get_elements(self):
		pass
		#TODO: failing
		#print(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_elements(Vector3(1,2,3)))
	
	def test_get_axis(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_axis(0), Vector3(1,0,0))	
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_axis(1), Vector3(0,2,0))
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_axis(2), Vector3(0,0,3))
	
	def test_set_axis(self):
		basis = Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))
		basis.set_axis(0, Vector3(1,2,3))
		self.assertEqual(basis.get_axis(0), Vector3(1,2,3))	
		
		basis = Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))
		basis.set_axis(1, Vector3(1,2,3))
		self.assertEqual(basis.get_axis(1), Vector3(1,2,3))	
		
		basis = Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))
		basis.set_axis(2, Vector3(1,2,3))
		self.assertEqual(basis.get_axis(2), Vector3(1,2,3))	
	
	def test_sub(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))- Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)),
		Basis.new_with_rows(Vector3(0,0,0), Vector3(0,0,0), Vector3(0,0,0)))
	
	def test_add(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))+ Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)),
		Basis.new_with_rows(Vector3(2,0,0), Vector3(0,4,0), Vector3(0,0,6)))
	
	def test_mult(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))*3,
		Basis.new_with_rows(Vector3(3,0,0), Vector3(0,6,0), Vector3(0,0,9)))

	def test_mult_scalar(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3))* Basis.new_with_rows(Vector3(2,0,0), Vector3(0,4,0), Vector3(0,0,6)),
		Basis.new_with_rows(Vector3(2,0,0), Vector3(0,8,0), Vector3(0,0,18)))
