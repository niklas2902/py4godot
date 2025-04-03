import unittest

from py4godot.classes.core import *

class PythonTest(unittest.TestCase):

    def test_color_rgb(self):
        c = Color.new3(0.1,0.5,0.8)
        self.assertAlmostEqual(c.r, 0.1, places=4)
        self.assertAlmostEqual(c.g, 0.5, places=4)
        self.assertAlmostEqual(c.b, 0.6, places=4)
