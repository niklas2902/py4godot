import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):
	def test_append_int(self):
		int_array = PoolIntArray()
		int_array.append(1)
		self.assertEqual(int_array[0], 1)
