import unittest
from py4godot import RID


class PythonTest(unittest.TestCase):
	def test_get_id(self):
		#TODO: check how to use godot_object
		rid = RID()
		self.assertEqual(rid.get_id(), 0)
