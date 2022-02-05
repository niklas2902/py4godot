import unittest
from py4godot import Rect2, Vector2


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
