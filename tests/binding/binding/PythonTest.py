import unittest
from py4godot.enums.enums import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *
from py4godot.pluginscript_api.hints import *


class PythonTest(unittest.TestCase):
	#TODO: ugly, improve
	objectToTest = None

	def test_a(self):
		print("objectToTest:",objectToTest)
		objectToTest.call("test_signal")
		self.assertTrue(objectToTest.get("signal_emitted"))
