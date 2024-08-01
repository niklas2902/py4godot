import json
import_string_core = """
"""

import_string_py4godot = """
from py4godot.pluginscript_api.utils.SignalArg import SignalArg
from py4godot.pluginscript_api.utils.annotations import gdclass, gdproperty,signal, gdmethod
from py4godot.pluginscript_api.utils.experimental import prop
import py4godot.constants as constants
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
    if "windows" in platform:
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/{core_folder}/__init__.py", "w") as init_file:
            init_file.write(import_string_core)

        """generate the __init__ file needed for the py4godot module"""
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/__init__.py", "w") as init_file:
            init_file.write(import_string_py4godot)
    else:
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/py4godot/{core_folder}/__init__.py", "w") as init_file:
            init_file.write(import_string_core)

        """generate the __init__ file needed for the py4godot module"""
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/lib/python3.11/py4godot/__init__.py", "w") as init_file:
            init_file.write(import_string_py4godot)


    #with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/pluginscript_api/hints/__init__.py", "w") as init_file:
    #    init_file.write(import_string_hints)