import os
import sys

from generate_cast_helpers import generate_cast_helpers

sys.path.append(os.getcwd()+"/../")
sys.path.append(os.getcwd())
from meson_scripts.get_dependencies_for_classes import generate_dev_build

if __name__ == "__main__":
    generate_cast_helpers(generate_dev_build())