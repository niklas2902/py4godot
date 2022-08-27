import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):

    def test_equal(self):
        self.assertEqual(Vector2(1, 1), Vector2(1, 1))
        self.assertEqual(Vector2(0, 0), Vector2(0, 0))
        self.assertEqual(Vector2(0, 1), Vector2(0, 1))
        self.assertEqual(Vector2(1, 0), Vector2(1, 0))
        self.assertEqual(Vector2(1, 1), Vector2(1, 1))
        self.assertEqual(Vector2(100, 0), Vector2(100, 0))
        self.assertEqual(Vector2(0, -1), Vector2(0, -1))
        self.assertEqual(Vector2(-1, 1), Vector2(-1, 1))

    def test_normailized(self):
        self.assertEqual(Vector2(1, 0).normalized(), Vector2(1, 0))
        self.assertEqual(Vector2(5, 0).normalized(), Vector2(1, 0))
        self.assertEqual(Vector2(-1, 0).normalized(), Vector2(-1, 0))
        self.assertEqual(Vector2(0, -1).normalized(), Vector2(0, -1))
        self.assertEqual(Vector2(0, 5).normalized(), Vector2(0, 1))
        self.assertEqual(Vector2(0, 10).normalized(), Vector2(0, 1))
        self.assertEqual(Vector2(0, 0).normalized(), Vector2(0, 0))
        self.assertEqual(Vector2(0, 2.5).normalized(), Vector2(0, 1))

    def test_length(self):
        self.assertEqual(Vector2(1, 0).length(), 1)
        self.assertEqual(Vector2(2, 0).length(), 2)
        self.assertEqual(Vector2(0, 2).length(), 2)
        self.assertEqual(Vector2(0, 10).length(), 10)
        self.assertEqual(Vector2(0, -2).length(), 2)
        self.assertEqual(Vector2(20, 0).length(), 20)
        self.assertEqual(Vector2(1, 1).length(), 1.4142135381698608)

    def test_length_squared(self):
        self.assertEqual(Vector2(1, 0).length_squared(), 1)
        self.assertEqual(Vector2(2, 0).length_squared(), 4)
        self.assertEqual(Vector2(0, 2).length_squared(), 4)
        self.assertEqual(Vector2(0, 10).length_squared(), 100)
        self.assertEqual(Vector2(0, -2).length_squared(), 4)
        self.assertEqual(Vector2(0, 1).length_squared(), 1)
        self.assertEqual(Vector2(20, 0).length_squared(), 400)

    def test_is_normalized(self):
        self.assertTrue(Vector2(1, 0).is_normalized)
        self.assertTrue(Vector2(0, 1).is_normalized)
        self.assertTrue(Vector2(-1, 0).is_normalized)
        self.assertTrue(Vector2(0, -1).is_normalized)

    def test_distance_to(self):
        self.assertEqual(Vector2(1, 0).distance_to(Vector2(0, 0)), 1)
        self.assertEqual(Vector2(2, 0).distance_to(Vector2(0, 0)), 2)
        self.assertEqual(Vector2(1, 1).distance_to(Vector2(0, 1)), 1)
        self.assertEqual(Vector2(1, 1).distance_to(Vector2(0, 0)), 1.4142135381698608)

    def test_distance_squared_to(self):
        self.assertEqual(Vector2(1, 0).distance_squared_to(Vector2(0, 0)), 1)
        self.assertEqual(Vector2(2, 0).distance_squared_to(Vector2(0, 0)), 4)
        self.assertEqual(Vector2(3, 1).distance_squared_to(Vector2(0, 1)), 9)

    def test_angle_to(self):
        self.assertEqual(Vector2(1, 0).angle_to(Vector2(0, 1)), 1.5707963705062866)
        self.assertEqual(Vector2(1, 0).angle_to(Vector2(0.5, 0)), 0)
        self.assertEqual(Vector2(1, 0).angle_to(Vector2(0.5, 1)), 1.1071487665176392)
        self.assertEqual(Vector2(1, 0).angle_to(Vector2(1, 1)), 0.7853981852531433)
        self.assertEqual(Vector2(100, 0).angle_to(Vector2(0, 1)), 1.5707963705062866)

    def test_linear_interpolate(self):
        self.assertEqual(Vector2(1, 1).linear_interpolate(Vector2(1, 2), 1), Vector2(1, 2))
        self.assertEqual(Vector2(1, 1).linear_interpolate(Vector2(1, 2), 2), Vector2(1, 3))
        self.assertEqual(Vector2(1, 1).linear_interpolate(Vector2(1, 2), 0), Vector2(1, 1))

    def test_cubic_interpolate(self):
        # TODO: Find out what this does
        self.assertEqual(Vector2(1, 1).cubic_interpolate(Vector2(1, 2), Vector2(1, 2),
                                                         Vector2(1, 2), 5), Vector2(1, -124))

    def test_rotated(self):
        self.assertEqual(Vector2(1, 0).rotated(3.14159265359).get_x(), -1)
        self.assertEqual(Vector2(1, 0).rotated(0).get_x(), 1)
        self.assertEqual(Vector2(1, 0).rotated(1.57079632679).get_y(), 1)

    def test_floor(self):
        self.assertEqual(Vector2(-3.1, 1).floor(), Vector2(-4, 1))
        self.assertEqual(Vector2(-3, 1).floor(), Vector2(-3, 1))
        self.assertEqual(Vector2(2.9, 1).floor(), Vector2(2, 1))
        self.assertEqual(Vector2(1, 2.1).floor(), Vector2(1, 2))
        self.assertEqual(Vector2(1, 2).floor(), Vector2(1, 2))

    def test_snapped(self):
        self.assertEqual(Vector2(1, 3.1).snapped(Vector2(1, 1)), Vector2(1, 3))
        self.assertEqual(Vector2(1.3, 3.21).snapped(Vector2(1, 0.1)), Vector2(1, 3.2))
        self.assertEqual(Vector2(1.3, 3.21).snapped(Vector2(1, 0.1)), Vector2(1, 3.2))

    def test_dot(self):
        self.assertEqual(Vector2(1, 0).dot(Vector2(0, 1)), 0)
        self.assertEqual(Vector2(1, 2).dot(Vector2(1, 2)), 5)
        self.assertEqual(Vector2(1, 1).dot(Vector2(1, 1)), 2)

    def test_slide(self):
        self.assertEqual(Vector2(1, 2).slide(Vector2(0, 0)), Vector2(0, 0))
        self.assertEqual(Vector2(3, 2).slide(Vector2(0, 1)), Vector2(3, 0))
        self.assertEqual(Vector2(1, 2).slide(Vector2(1, 0)), Vector2(0, 2))

    def test_bounce(self):
        self.assertEqual(Vector2(1, 2).bounce(Vector2(1, 0)), Vector2(-1, 2))
        self.assertEqual(Vector2(3, 2).bounce(Vector2(0, 1)), Vector2(3, -2))

    def test_reflect(self):
        self.assertEqual(Vector2(1, 2).reflect(Vector2(1, 0)), Vector2(1, -2))
        self.assertEqual(Vector2(1, 2).reflect(Vector2(0, 1)), Vector2(-1, 2))

    def test_abs(self):
        self.assertEqual(Vector2(1, 2).abs(), Vector2(1, 2))
        self.assertEqual(Vector2(-1, 2).abs(), Vector2(1, 2))
        self.assertEqual(Vector2(1, -2).abs(), Vector2(1, 2))
        self.assertEqual(Vector2(1, 2).abs(), Vector2(1, 2))

    def test_sub(self):
        self.assertEqual(Vector2(1, 2).sub(Vector2(1, 0)), Vector2(0, 2))
        self.assertEqual(Vector2(1, 2).sub(Vector2(0, 1)), Vector2(1, 1))

    def test_sub_operator(self):
        self.assertEqual(Vector2(1, 2) - Vector2(1, 0), Vector2(0, 2))
        self.assertEqual(Vector2(1, 2) - Vector2(0, 1), Vector2(1, 1))

    def test_neg(self):
        self.assertEqual(Vector2(1, 2).neg(), Vector2(-1, -2))
        self.assertEqual(Vector2(-1, 2).neg(), Vector2(1, -2))
        self.assertEqual(Vector2(1, -2).neg(), Vector2(-1, 2))
        self.assertEqual(Vector2(1, 2).neg(), Vector2(-1, -2))

    def test_multiplay_vector(self):
        self.assertEqual(Vector2(1, 2).multiply_vector(Vector2(1, 2)), Vector2(1, 4))
        self.assertEqual(Vector2(-1, 2).multiply_vector(Vector2(1, 2)), Vector2(-1, 4))
        self.assertEqual(Vector2(4, -5).multiply_vector(Vector2(7, 8)), Vector2(28, -40))
        self.assertEqual(Vector2(1, 2).multiply_vector(Vector2(1, 2)), Vector2(1, 4))

    def test_multiply_scalar(self):
        self.assertEqual(Vector2(1, 2).multiply_scalar(3), Vector2(3, 6))
        self.assertEqual(Vector2(1, 2).multiply_scalar(-1), Vector2(-1, -2))

    def test_multiplay_operator(self):
        self.assertEqual(Vector2(1, 2) * Vector2(1, 2), Vector2(1, 4))
        self.assertEqual(Vector2(-1, 2) * Vector2(1, 2), Vector2(-1, 4))
        self.assertEqual(Vector2(4, -5) * Vector2(7, 8), Vector2(28, -40))
        self.assertEqual(Vector2(1, 2) * Vector2(1, 2), Vector2(1, 4))

        self.assertEqual(Vector2(1, 2) * 3, Vector2(3, 6))
        self.assertEqual(Vector2(1, 2) * (-1), Vector2(-1, -2))

    def test_divicde_scalar(self):
        self.assertEqual(Vector2(3, 3).divide_scalar(3), Vector2(1, 1))
        self.assertEqual(Vector2(2, 2).divide_scalar(-1), Vector2(-2, -2))

    def test_divide_vector(self):
        self.assertEqual(Vector2(1, 2).divide_vector(Vector2(1, 2)), Vector2(1, 1))
        self.assertEqual(Vector2(1, 2).divide_vector(Vector2(-1, -2)), Vector2(-1, -1))

    def test_divide_operator(self):
        self.assertEqual(Vector2(1, 2) / Vector2(1, 2), Vector2(1, 1))
        self.assertEqual(Vector2(1, 2) / Vector2(-1, -2), Vector2(-1, -1))

        self.assertEqual(Vector2(1, 2) / 1, Vector2(1, 2))
        self.assertEqual(Vector2(1, 2) / -1, Vector2(-1, -2))

    def test_get_axis(self):
        self.assertEqual(Vector2(1, 2).get_x(), 1)
        self.assertEqual(Vector2(1, 2).get_y(), 2)

    def test_set_axis(self):
        vector = Vector2(1, 2)
        vector.set_x(4)
        self.assertEqual(vector.get_x(), 4)
        vector.set_y(5)
        self.assertEqual(vector.get_y(), 5)

    def test_add_method(self):
        self.assertEqual(Vector2(1, 0).add(Vector2(1, 0)), Vector2(2, 0))
        self.assertEqual(Vector2(-1, 0).add(Vector2(1, 0)), Vector2(0, 0))
        self.assertEqual(Vector2(0, 1).add(Vector2(0, 1)), Vector2(0, 2))
        self.assertEqual(Vector2(0, 0).add(Vector2(0, 0)), Vector2(0, 0))
        self.assertEqual(Vector2(0, -1).add(Vector2(0, -1)), Vector2(0, -2))
        self.assertEqual(Vector2(0, -1).add(Vector2(0, 1)), Vector2(0, 0))
        self.assertEqual(Vector2(10, 0).add(Vector2(1, 0)), Vector2(11, 0))
        self.assertEqual(Vector2(0, 0).add(Vector2(0, 0)), Vector2(0, 0))
        self.assertEqual(Vector2(0, -8).add(Vector2(0, 2)), Vector2(0, -6))

    def test_add_operator(self):
        self.assertEqual(Vector2(1, 0) + Vector2(1, 0), Vector2(2, 0))
        self.assertEqual(Vector2(-1, 0) + Vector2(1, 0), Vector2(0, 0))
        self.assertEqual(Vector2(0, 1) + Vector2(0, 1), Vector2(0, 2))
        self.assertEqual(Vector2(0, 0) + Vector2(0, 0), Vector2(0, 0))
        self.assertEqual(Vector2(0, -1) + Vector2(0, -1), Vector2(0, -2))
        self.assertEqual(Vector2(0, -1) + Vector2(0, 1), Vector2(0, 0))
        self.assertEqual(Vector2(10, 0) + Vector2(1, 0), Vector2(11, 0))
        self.assertEqual(Vector2(0, 0) + Vector2(0, 0), Vector2(0, 0))
        self.assertEqual(Vector2(0, -8) + Vector2(0, 2), Vector2(0, -6))
