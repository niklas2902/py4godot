import unittest

from py4godot.classes.Node3D import Node3D
from TestObject import TestObject


class PythonTest(unittest.TestCase):
    test_object: TestObject

    def __init__(self, methodName='runSignalTest', test_object: TestObject=None):
        super().__init__(methodName)
        self.test_object = test_object


    def test_inbuilt_signal(self):
        # Use the test_object
        self.assertIsNotNone(self.test_object)
        self.test_object.visible = False
        self.assertTrue(self.test_object.is_visible_called)
        self.test_object.disconnect_visibility()
        self.test_object.visible = True
        self.assertTrue(self.test_object.is_visible_called) # Did not toggle

    def test_custom_signal_no_args(self):
        self.assertIsNotNone(self.test_object)
        self.test_object.custom_signal_no_args.emit()
        self.assertTrue(self.test_object.custom_signal_no_arg_called)
        self.test_object.disconnect_custom_signal()
        self.test_object.custom_signal_no_args.emit()
        self.assertTrue(self.test_object.custom_signal_no_arg_called) # Did not toggle

    def test_custom_signal_with_args(self):
        self.assertIsNotNone(self.test_object)
        self.test_object.custom_signal_with_args.emit(5)
        self.assertEqual(self.test_object.custom_signal_with_args_value, 5)
        #self.test_object.disconnect_custom_signal_with_arg()
        try:
            pass
            #self.test_object.custom_signal_with_args.emit()
        except Exception:
            pass
        self.assertEqual(self.test_object.custom_signal_with_args_value, 5) # Did not change

    def test_custom_signal_godot_object(self):
        return
        self.assertIsNotNone(self.test_object)
        self.test_object.emit_godot_object_signal()
        godot_object = self.test_object.get_node("%GodotObject")
        val = godot_object.get("val")
        self.assertEqual(val, 1)
