import json
import_string_core = """
from py4godot.core.vector3.Vector3 import *
from py4godot.core.vector2.Vector2 import *
from py4godot.core.variant.Variant import *
from py4godot.core.transform.Transform import *
from py4godot.core.transform.Transform2D import *
from py4godot.core.string_name.StringName import *
from py4godot.core.string.String import *
from py4godot.core.rid.RID import *
from py4godot.core.rect2.Rect2 import *
from py4godot.core.quat.Quat import *
from py4godot.core.plane.Plane import *
from py4godot.core.node_path.NodePath import *
from py4godot.core.dictionary.Dictionary import *
from py4godot.core.color.Color import *
from py4godot.core.basis.Basis import *
from py4godot.core.array.Array import *
from py4godot.core.pool_array.PoolArrays import *
from py4godot.core.aabb.AABB import *
"""

import_string_py4godot = """
"""

import_string_hints = """
from py4godot.pluginscript_api.hints.range_hint.RangeHint import *
from py4godot.pluginscript_api.hints.custom_hint.CustomHint import *
from py4godot.pluginscript_api.hints.exp_range_hint.ExpRangeHint import *
from py4godot.pluginscript_api.hints.enum_hint.EnumHint import *
from py4godot.pluginscript_api.hints.flags_hint.FlagsHint import *
"""

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

build_folder = config_data['output_dir']
core_folder = config_data['core_folder']
def create_init_file(platform):
    """generate the __init__ file needed for the core module"""
    with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/{core_folder}/__init__.py", "w") as init_file:
        init_file.write(import_string_core)

    """generate the __init__ file needed for the py4godot module"""
    with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/__init__.py", "w") as init_file:
        init_file.write(import_string_py4godot)

    with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/pluginscript_api/hints/__init__.py", "w") as init_file:
        init_file.write(import_string_hints)