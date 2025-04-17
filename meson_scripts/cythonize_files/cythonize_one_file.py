import sys
from Cython.Build import cythonize
from setuptools import Extension
import os
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python build_cython.py <filename.pyx>")
        sys.exit(1)

    filename = sys.argv[1]

    if not filename.endswith(".pyx") or not os.path.exists(filename):
        print(f"Invalid or missing file: {filename}")
        sys.exit(1)

    cythonize(filename, language_level=3, annotate=True, cache=False)
