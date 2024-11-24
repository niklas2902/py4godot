import unittest

from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):

	def test_equal(self):
		self.assertEqual(Vector3(1, 1, 1), Vector3(1, 1, 1))
		self.assertEqual(Vector3(0, 0, 0), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 0, 1), Vector3(0, 0, 1))
		self.assertEqual(Vector3(1, 0, 0), Vector3(1, 0, 0))
		self.assertEqual(Vector3(1, 1, 0), Vector3(1, 1, 0))
		self.assertEqual(Vector3(100, 0, 0), Vector3(100, 0, 0))
		self.assertEqual(Vector3(0, 1, 0), Vector3(0, 1, 0))
		self.assertEqual(Vector3(0, -1, 0), Vector3(0, -1, 0))
		self.assertEqual(Vector3(0, -1, 1), Vector3(0, -1, 1))

	def test_normailized(self):
		self.assertEqual(Vector3(1, 0, 0).normalized(), Vector3(1, 0, 0))
		self.assertEqual(Vector3(5, 0, 0).normalized(), Vector3(1, 0, 0))
		self.assertEqual(Vector3(-1, 0, 0).normalized(), Vector3(-1, 0, 0))
		self.assertEqual(Vector3(0, -1, 0).normalized(), Vector3(0, -1, 0))
		self.assertEqual(Vector3(0, 5, 0).normalized(), Vector3(0, 1, 0))
		self.assertEqual(Vector3(0, 0, 10).normalized(), Vector3(0, 0, 1))
		self.assertEqual(Vector3(0, 0, 0).normalized(), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 2.5, 0).normalized(), Vector3(0, 1, 0))

	def test_inverse(self):
		self.assertEqual(Vector3(2, 2, 2).inverse(), Vector3(0.5, 0.5, 0.5))
		self.assertEqual(Vector3(1, 1, 1).inverse(), Vector3(1, 1, 1))
		self.assertEqual(Vector3(1, 2, 4).inverse(), Vector3(1, 0.5, 0.25))
		self.assertEqual(Vector3(4, 2, 1).inverse(), Vector3(0.25, 0.5, 1))
		self.assertEqual(Vector3(5, 5, 5).inverse(), Vector3(0.2, 0.2, 0.2))

	def test_length(self):
		self.assertEqual(Vector3(1, 0, 0).length(), 1)
		self.assertEqual(Vector3(2, 0, 0).length(), 2)
		self.assertEqual(Vector3(0, 2, 0).length(), 2)
		self.assertEqual(Vector3(0, 10, 0).length(), 10)
		self.assertEqual(Vector3(0, -2, 0).length(), 2)
		self.assertEqual(Vector3(0, 0, 1).length(), 1)
		self.assertEqual(Vector3(20, 0, 0).length(), 20)
		self.assertEqual(Vector3(1, 1, 0).length(), 1.4142135381698608)

	def test_length_squared(self):
		self.assertEqual(Vector3(1, 0, 0).length_squared(), 1)
		self.assertEqual(Vector3(2, 0, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 2, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 10, 0).length_squared(), 100)
		self.assertEqual(Vector3(0, -2, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 0, 1).length_squared(), 1)
		self.assertEqual(Vector3(20, 0, 0).length_squared(), 400)

	def test_is_normalized(self):
		self.assertTrue(Vector3(1, 0, 0).is_normalized)
		self.assertTrue(Vector3(0, 1, 0).is_normalized)
		self.assertTrue(Vector3(0, 0, 1).is_normalized)
		self.assertTrue(Vector3(-1, 0, 0).is_normalized)
		self.assertTrue(Vector3(0, -1, 0).is_normalized)
		self.assertTrue(Vector3(0, 0, -1).is_normalized)

	def test_distance_to(self):
		self.assertEqual(Vector3(1, 0, 0).distance_to(Vector3(0, 0, 0)), 1)
		self.assertEqual(Vector3(2, 0, 0).distance_to(Vector3(0, 0, 0)), 2)
		self.assertEqual(Vector3(1, 1, 0).distance_to(Vector3(0, 1, 0)), 1)
		self.assertEqual(Vector3(1, 1, 1).distance_to(Vector3(0, 0, 0)), 1.7320507764816284)

	def test_distance_squared_to(self):
		self.assertEqual(Vector3(1, 0, 0).distance_squared_to(Vector3(0, 0, 0)), 1)
		self.assertEqual(Vector3(2, 0, 0).distance_squared_to(Vector3(0, 0, 0)), 4)
		self.assertEqual(Vector3(3, 1, 0).distance_squared_to(Vector3(0, 1, 0)), 9)
		self.assertEqual(Vector3(1, 1, 1).distance_squared_to(Vector3(0, 0, 0)), 3)

	def test_angle_to(self):
		self.assertEqual(Vector3(1, 0, 0).angle_to(Vector3(0, 1, 0)), 1.5707963705062866)
		self.assertEqual(Vector3(1, 0, 0).angle_to(Vector3(0.5, 0, 0)), 0)
		self.assertEqual(Vector3(1, 0, 0).angle_to(Vector3(0.5, 1, 0)), 1.1071487665176392)
		self.assertEqual(Vector3(1, 0, 0).angle_to(Vector3(0, 1, 1)), 1.5707963705062866)
		self.assertEqual(Vector3(100, 0, 0).angle_to(Vector3(0, 1, 0)), 1.5707963705062866)

	def test_linear_interpolate(self):
		self.assertEqual(Vector3(1, 1, 1).linear_interpolate(Vector3(1, 2, 3), 1), Vector3(1, 2, 3))
		self.assertEqual(Vector3(1, 1, 1).linear_interpolate(Vector3(1, 2, 3), 2), Vector3(1, 3, 5))
		self.assertEqual(Vector3(1, 1, 1).linear_interpolate(Vector3(1, 2, 3), 0), Vector3(1, 1, 1))

	def test_cubic_interpolate(self):
		# TODO: Find out what this does
		self.assertEqual(Vector3(1, 1, 1).cubic_interpolate(Vector3(1, 2, 3), Vector3(1, 2, 3),
															Vector3(1, 2, 3), 5), Vector3(1, -124, -249))

	def test_rotated(self):
		self.assertEqual(Vector3(1, 0, 0).rotated(Vector3(0, 1, 0),
												  3.14159265359).get_axis(Vector3_Axis.X.value), -1)
		self.assertEqual(Vector3(1, 0, 0).rotated(Vector3(0, 1, 0),
												  0).get_axis(Vector3_Axis.X.value), 1)
		self.assertEqual(int(Vector3(1, 0, 0).rotated(Vector3(0, 1, 0),
													  1.57079632679).get_axis(Vector3_Axis.X.value)), 0)

	def test_crossed(self):
		self.assertEqual(Vector3(1, 0, 0).cross(Vector3(0, 1, 0)), Vector3(0, 0, 1))
		self.assertEqual(Vector3(1, 2, 3).cross(Vector3(3, 2, 1)), Vector3(-4, 8, -4))
		self.assertEqual(Vector3(0, 0, 0).cross(Vector3(0, 1, 0)), Vector3(0, 0, 0))
		self.assertEqual(Vector3(2, 2, 2).cross(Vector3(2, 2, 2)), Vector3(0, 0, 0))

	def test_floor(self):
		self.assertEqual(Vector3(-3.1, 1, 1).floor(), Vector3(-4, 1, 1))
		self.assertEqual(Vector3(-3, 1, 1).floor(), Vector3(-3, 1, 1))
		self.assertEqual(Vector3(2.9, 1, 1).floor(), Vector3(2, 1, 1))
		self.assertEqual(Vector3(1, 2.1, 1).floor(), Vector3(1, 2, 1))
		self.assertEqual(Vector3(1, 2, 2.1).floor(), Vector3(1, 2, 2))

	def test_snapped(self):
		self.assertEqual(Vector3(1, 3.1, 0).snapped(Vector3(1, 1, 1)), Vector3(1, 3, 0))
		self.assertEqual(Vector3(1.3, 3.21, 0).snapped(Vector3(1, 0.1, 1)), Vector3(1, 3.2, 0))
		self.assertEqual(Vector3(1.3, 3.21, 2.21).snapped(Vector3(1, 0.1, 0.1)), Vector3(1, 3.2, 2.2))

	def test_dot(self):
		self.assertEqual(Vector3(1, 0, 0).dot(Vector3(0, 1, 0)), 0)
		self.assertEqual(Vector3(1, 2, 3).dot(Vector3(1, 2, 3)), 14)
		self.assertEqual(Vector3(1, 1, 1).dot(Vector3(1, 1, 1)), 3)

	def test_ceil(self):
		self.assertEqual(Vector3(1, 0, 0).ceil(), Vector3(1, 0, 0))
		self.assertEqual(Vector3(1.5, 0, 0).ceil(), Vector3(2, 0, 0))
		self.assertEqual(Vector3(1.1, 1.1, 1.1).ceil(), Vector3(2, 2, 2))

	def test_slide(self):
		self.assertEqual(Vector3(1, 2, 1).slide(Vector3(0, 0, 1)), Vector3(1, 2, 0))
		self.assertEqual(Vector3(3, 2, 1).slide(Vector3(0, 1, 0)), Vector3(3, 0, 1))
		self.assertEqual(Vector3(1, 2, 1).slide(Vector3(1, 0, 0)), Vector3(0, 2, 1))

	def test_bounce(self):
		self.assertEqual(Vector3(1, 2, 1).bounce(Vector3(0, 0, 1)), Vector3(1, 2, -1))
		self.assertEqual(Vector3(3, 2, 1).bounce(Vector3(0, 1, 0)), Vector3(3, -2, 1))
		self.assertEqual(Vector3(1, 2, 1).bounce(Vector3(1, 0, 0)), Vector3(-1, 2, 1))

	def test_reflect(self):
		print(Vector3(1, 2, 1).reflect(Vector3(0, 0, 1)))
		self.assertEqual(Vector3(1, 2, 1).reflect(Vector3(0, 0, 1)), Vector3(-1, -2, 1))
		self.assertEqual(Vector3(1, 2, 3).reflect(Vector3(1, 0, 0)), Vector3(1, -2, -3))
		self.assertEqual(Vector3(1, 2, 3).reflect(Vector3(0, 1, 0)), Vector3(-1, 2, -3))

	def test_abs(self):
		self.assertEqual(Vector3(1, 2, 3).abs(), Vector3(1, 2, 3))
		self.assertEqual(Vector3(-1, 2, 3).abs(), Vector3(1, 2, 3))
		self.assertEqual(Vector3(1, -2, 3).abs(), Vector3(1, 2, 3))
		self.assertEqual(Vector3(1, 2, -3).abs(), Vector3(1, 2, 3))

	def test_sub(self):
		self.assertEqual(Vector3(1, 2, 3).sub(Vector3(1, 0, 0)), Vector3(0, 2, 3))
		self.assertEqual(Vector3(1, 2, 3).sub(Vector3(0, 1, 0)), Vector3(1, 1, 3))
		self.assertEqual(Vector3(1, 2, 3).sub(Vector3(0, 0, 1)), Vector3(1, 2, 2))

	def test_sub_operator(self):
		self.assertEqual(Vector3(1, 2, 3) - Vector3(1, 0, 0), Vector3(0, 2, 3))
		self.assertEqual(Vector3(1, 2, 3) - Vector3(0, 1, 0), Vector3(1, 1, 3))
		self.assertEqual(Vector3(1, 2, 3) - (Vector3(0, 0, 1)), Vector3(1, 2, 2))

	def test_neg(self):
		self.assertEqual(Vector3(1, 2, 3).neg(), Vector3(-1, -2, -3))
		self.assertEqual(Vector3(-1, 2, 3).neg(), Vector3(1, -2, -3))
		self.assertEqual(Vector3(1, -2, 3).neg(), Vector3(-1, 2, -3))
		self.assertEqual(Vector3(1, 2, -3).neg(), Vector3(-1, -2, 3))

	def test_multiplay_vector(self):
		self.assertEqual(Vector3(1, 2, 3).multiply_vector(Vector3(1, 2, 3)), Vector3(1, 4, 9))
		self.assertEqual(Vector3(-1, 2, 5).multiply_vector(Vector3(1, 2, 3)), Vector3(-1, 4, 15))
		self.assertEqual(Vector3(4, -5, 6).multiply_vector(Vector3(7, 8, 9)), Vector3(28, -40, 54))
		self.assertEqual(Vector3(1, 2, -3).multiply_vector(Vector3(1, 2, 3)), Vector3(1, 4, -9))

	def test_multiply_scalar(self):
		self.assertEqual(Vector3(1, 2, 3).multiply_scalar(3), Vector3(3, 6, 9))
		self.assertEqual(Vector3(1, 2, 3).multiply_scalar(-1), Vector3(-1, -2, -3))

	def test_multiplay_operator(self):
		self.assertEqual(Vector3(1, 2, 3) * Vector3(1, 2, 3), Vector3(1, 4, 9))
		self.assertEqual(Vector3(-1, 2, 5) * Vector3(1, 2, 3), Vector3(-1, 4, 15))
		self.assertEqual(Vector3(4, -5, 6) * Vector3(7, 8, 9), Vector3(28, -40, 54))
		self.assertEqual(Vector3(1, 2, -3) * Vector3(1, 2, 3), Vector3(1, 4, -9))

		self.assertEqual(Vector3(1, 2, 3) * 3, Vector3(3, 6, 9))
		self.assertEqual(Vector3(1, 2, 3) * (-1), Vector3(-1, -2, -3))

	def test_divicde_scalar(self):
		self.assertEqual(Vector3(3, 3, 3).divide_scalar(3), Vector3(1, 1, 1))
		self.assertEqual(Vector3(2, 2, 2).divide_scalar(-1), Vector3(-2, -2, -2))

	def test_divide_vector(self):
		self.assertEqual(Vector3(1, 2, 3).divide_vector(Vector3(1, 2, 3)), Vector3(1, 1, 1))
		self.assertEqual(Vector3(1, 2, 3).divide_vector(Vector3(-1, -2, -3)), Vector3(-1, -1, -1))

	def test_divide_operator(self):
		self.assertEqual(Vector3(1, 2, 3) / Vector3(1, 2, 3), Vector3(1, 1, 1))
		self.assertEqual(Vector3(1, 2, 3) / Vector3(-1, -2, -3), Vector3(-1, -1, -1))

		self.assertEqual(Vector3(1, 2, 3) / 1, Vector3(1, 2, 3))
		self.assertEqual(Vector3(1, 2, -3) / -1, Vector3(-1, -2, 3))

	def test_get_axis(self):
		self.assertEqual(Vector3(1, 2, 3).get_axis(Vector3_Axis.X.value), 1)
		self.assertEqual(Vector3(1, 2, 3).get_axis(Vector3_Axis.Y.value), 2)
		self.assertEqual(Vector3(1, 2, 3).get_axis(Vector3_Axis.Z.value), 3)

	def test_set_axis(self):
		vector = Vector3(1, 2, 3)
		vector.set_axis(Vector3_Axis.X.value, 4)
		self.assertEqual(vector.get_axis(Vector3_Axis.X.value), 4)

		vector.set_axis(Vector3_Axis.Y.value, 5)
		self.assertEqual(vector.get_axis(Vector3_Axis.Y.value), 5)

		vector.set_axis(Vector3_Axis.Z.value, 6)
		self.assertEqual(vector.get_axis(Vector3_Axis.Z.value), 6)

	def test_add_method(self):
		self.assertEqual(Vector3(1, 0, 0).add(Vector3(1, 0, 0)), Vector3(2, 0, 0))
		self.assertEqual(Vector3(-1, 0, 0).add(Vector3(1, 0, 0)), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 1, 0).add(Vector3(0, 1, 0)), Vector3(0, 2, 0))
		self.assertEqual(Vector3(0, 0, 1).add(Vector3(0, 0, 1)), Vector3(0, 0, 2))
		self.assertEqual(Vector3(0, -1, -1).add(Vector3(0, -1, -1)), Vector3(0, -2, -2))
		self.assertEqual(Vector3(0, -1, -1).add(Vector3(0, 1, 0)), Vector3(0, 0, -1))
		self.assertEqual(Vector3(10, 0, 0).add(Vector3(1, 0, 0)), Vector3(11, 0, 0))
		self.assertEqual(Vector3(0, 0, -10).add(Vector3(0, 0, 1)), Vector3(0, 0, -9))
		self.assertEqual(Vector3(0, -8, -5).add(Vector3(0, 2, 3)), Vector3(0, -6, -2))

	def test_add_operator(self):
		self.assertEqual(Vector3(1, 0, 0) + Vector3(1, 0, 0), Vector3(2, 0, 0))
		self.assertEqual(Vector3(-1, 0, 0) + Vector3(1, 0, 0), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 1, 0) + Vector3(0, 1, 0), Vector3(0, 2, 0))
		self.assertEqual(Vector3(0, 0, 1) + Vector3(0, 0, 1), Vector3(0, 0, 2))
		self.assertEqual(Vector3(0, -1, -1) + Vector3(0, -1, -1), Vector3(0, -2, -2))
		self.assertEqual(Vector3(0, -1, -1) + Vector3(0, 1, 0), Vector3(0, 0, -1))
		self.assertEqual(Vector3(10, 0, 0) + Vector3(1, 0, 0), Vector3(11, 0, 0))
		self.assertEqual(Vector3(0, 0, -10) + Vector3(0, 0, 1), Vector3(0, 0, -9))
		self.assertEqual(Vector3(0, -8, -5) + Vector3(0, 2, 3), Vector3(0, -6, -2))
