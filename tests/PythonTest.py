import unittest
import time
from py4godot.core import *
from py4godot.classes import *
from py4godot.pluginscript_api.utils import *

class PythonTest(unittest.TestCase):

	def test_upper(self):
		time.sleep(1)
		self.assertEqual('foo'.upper(), 'FOO')

	def test_equal_vector3(self):
		self.assertEqual(Vector3(1,1,1), Vector3(1,1,1))



