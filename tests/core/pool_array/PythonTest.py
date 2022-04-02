import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):
	def test_append(self):
		int_array = PoolIntArray([])
		#int_array.write()
		int_array.append(1)
		print("value:",int_array[0])
