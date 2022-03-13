import unittest

from py4godot import Transform2D, Vector2


class PythonTest(unittest.TestCase):
	def test_new_with_axis_origin(self):
		transform = Transform2D.new_with_axis_origin(Vector2(1,0), Vector2(0,1), Vector2(1,1))
		self.assertEqual(transform, Transform2D(0, Vector2(1,1)))
		
	def test_inverse(self):
		transform = Transform2D(0, Vector2(1,1))
		print(transform.inverse())
		self.assertEqual(str(transform.inverse()), "1, -0, 0, 1, -1, -1")
		
	def test_get_rotation(self):
		transform = Transform2D(0.5, Vector2(1,1))
		self.assertEqual(transform.get_rotation(), 0.5)
	
	def test_get_origin(self):
		transform = Transform2D.new_with_axis_origin(Vector2(1,0), Vector2(0,1), Vector2(1,2))
		self.assertEqual(transform.get_origin(), Vector2(1, 2))
	
	def test_get_scale(self):
		transform = Transform2D.new_with_axis_origin(Vector2(2,0), Vector2(0,1), Vector2(1,2))
		print(transform.get_scale())
		self.assertEqual(transform.get_scale(), Vector2(2,1))
