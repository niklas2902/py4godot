import unittest
from py4godot import AABB, Vector3, Plane, String


class PythonTest(unittest.TestCase):
	#TODO: ugly, improve
	objectToTest = None

	def test_a(self):
		print("objectToTest:",objectToTest)
		objectToTest.call(String("test_signal"))
		self.assertTrue(objectToTest.get(String("signal_emitted")))
