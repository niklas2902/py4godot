import unittest
from py4godot import Basis, Vector3, Vector3_Axis


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
		print(Basis().rotated(Vector3(1,0,0), 1.570796327))
		self.assertEqual(Basis().rotated(Vector3(1,0,0), 1.570796327),
		Basis.new_with_axis_and_angle(Vector3(1,0,0), 1.570796327))
	
	def test_scaled(self):
		b = Basis()
		self.assertEqual(Basis().scaled(Vector3(1,2,3)),
		Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)))
	def test_get_scale(self):
		print(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_scale())
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_scale(), Vector3(1,2,3))
	
	def test_get_euler(self):
		self.assertEqual(Basis.new_with_rows(Vector3(1,0,0), Vector3(0,2,0), Vector3(0,0,3)).get_euler(), Vector3(0,0,0))
	
