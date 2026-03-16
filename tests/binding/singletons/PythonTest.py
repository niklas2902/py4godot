import unittest

from py4godot.singletons import get_singleton


class PythonTest(unittest.TestCase):
    def test_singleton(self):
        singleton = get_singleton("singleton")
        self.assertTrue(singleton is not None)
        self.assertTrue(singleton.get_pyscript().test_method())

    def test_not_found_singleton(self):
        singleton = get_singleton("not_found_singleton")
        self.assertFalse(singleton is not None)

    def test_native_singleton(self):
        singleton = get_singleton("Engine")
        self.assertEqual(singleton.get_class(), "Engine")
