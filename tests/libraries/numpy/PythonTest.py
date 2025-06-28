import unittest

from py4godot.classes.core import *

class PythonTest(unittest.TestCase):

    def test_import(self):
        """Test that NumPy can be imported."""
        try:
            import numpy
        except ImportError:
            self.fail("NumPy could not be imported")

    def test_array_creation(self):
        """Test that a NumPy array can be created."""
        import numpy as np
        arr = np.array([1, 2, 3])
        self.assertEqual(arr.tolist(), [1, 2, 3])

    def test_basic_operations(self):
        """Test that NumPy can perform basic arithmetic operations."""
        import numpy as np
        arr = np.array([1, 2, 3])
        result = arr + 1
        self.assertTrue((result == np.array([2, 3, 4])).all())

    def test_matrix_multiplication(self):
        """Test that NumPy can perform matrix multiplication."""
        import numpy as np
        A = np.array([[1, 2], [3, 4]])
        B = np.array([[2, 0], [1, 2]])
        result = np.matmul(A, B)
        expected = np.array([[4, 4], [10, 8]])
        self.assertTrue((result == expected).all())

    def test_numpy_version(self):
        """Test that NumPy has a valid version number."""
        import numpy as np
        self.assertIsInstance(np.__version__, str)

    def test_packed_array(self):
        """Test creation of PackedArray from NumPy array."""
        import numpy as np
        ones = np.ones(5, dtype=np.uint8)
        array = PackedByteArray.from_memory_view(memoryview(ones))
        self.assertEqual(array.to_list(), [1, 1, 1, 1, 1])
