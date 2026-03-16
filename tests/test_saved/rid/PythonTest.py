import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	def test_get_id(self):
		#TODO: check how to use godot_object
		rid = RID()
		self.assertEqual(rid.get_id(), 0)
