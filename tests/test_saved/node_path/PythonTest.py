import unittest
from py4godot.enums.enums import *
from py4godot.core import *
from py4godot.classes.generated import *
from py4godot.pluginscript_api.utils.annotations import *


class PythonTest(unittest.TestCase):
	def test_is_absolute(self):
		node_path = NodePath("/hallo")
		self.assertTrue(node_path)
	
	def test_get_name_count(self):
		node_path = NodePath("/hallo")
		print(node_path.get_name_count())
		self.assertEqual(node_path.get_name_count(), 1)
	
	def test_get_name(self):
		node_path = NodePath("A/B")
		self.assertEqual(str(node_path.get_name(0)), str(String("A")))
		self.assertEqual(str(node_path.get_name(1)), str(String("B")))
	
	def test_get_subname_count(self):
		node_path = NodePath("A/B/C")
		self.assertEqual(node_path.get_subname_count(), 0)
	
	def test_get_subname(self):
		node_path = NodePath("A/B/C")
		self.assertEqual(str(node_path.get_subname(0)), str(String("")))
	
	def test_get_concatenated_subname(self):
		node_path = NodePath("A/B/C")
		self.assertEqual(str(node_path.get_concatenated_subnames()), str(String("")))
	
	def test_is_empty(self):
		node_path = NodePath("")
		self.assertTrue(node_path.is_empty())
