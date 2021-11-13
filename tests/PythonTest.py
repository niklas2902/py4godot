import unittest
import time
from core import *
from classes.generated import *
from pluginscript_api.utils.annotations import *

class PythonTest(unittest.TestCase):

	def test_upper(self):
		time.sleep(1)
		self.assertEqual('foo'.upper(), 'FOO')

	def test_equal_vector3(self):
		self.assertEqual(Vector3(1,1,1), Vector3(1,1,1))

	def test_always_fail(self):
		self.assertEqual(1,2)

