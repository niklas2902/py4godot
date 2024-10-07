import os
import sys

from generate_cast_helpers import generate_cast_helpers

sys.path.append(os.getcwd()+"/../")
sys.path.append(os.getcwd())
from meson_scripts.collect_all_classes import collect_all_classes
if __name__ == "__main__":
    generate_cast_helpers(collect_all_classes())