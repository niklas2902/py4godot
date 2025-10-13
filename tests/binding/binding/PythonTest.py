import unittest

from py4godot.classes.Node3D import Node3D
from TestObject import TestObject
from py4godot.classes.core import Array, Vector3
from py4godot.utils.print_tools import print_error


class PythonTest(unittest.TestCase):
    test_object: TestObject

    def __init__(self, methodName='runSignalTest', test_object: TestObject = None):
        super().__init__(methodName)
        self.test_object = test_object

    def test_global_position(self):
        self.test_object.global_position.x = 1
        self.assertEqual(1, self.test_object.global_position.x)

    def test_get_object_from_array(self):
        a = Array.new0()
        a.push_back(self.test_object)
        o = a.get(0)
        self.assertEqual(o.get_class(), "Node3D")

    def test_constants(self):
        self.assertEqual(Vector3.UP, Vector3.new3(0,  1,  0))


    def test_constants_throw_error(self):
        with self.assertRaises(RuntimeError):
            up = Vector3.UP
            up.x = 1

    def test_meta(self):
        self.assertEqual(self.test_object.get_meta_object(), True)
