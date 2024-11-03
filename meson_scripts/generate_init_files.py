import json
import_string_core = """
"""

import_string_py4godot = """
#Note: Importing from here is deprecated

from typing import TypeVar
from typing import List
import inspect

def gdmethod(function:object):
    pass
    
def SignalArg(name:str, type_:type):
    import py4godot.signals as signals
    return signals.SignalArg(name, type_)


def signal(args: List[SignalArg]):
    import py4godot.pluginscript_api.utils.annotations as annotations
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    annotations.signal(name, args)
    return None

def private(method):
    import py4godot.methods as methods
    return methods.private(method)

def gdclass(cls = None, icon=None):
    import py4godot.classes as classes
    return classes.gdclass(cls, icon)

T = TypeVar("T")
def gdproperty(type_:type, defaultval:T):
    import py4godot.properties as properties
    return properties._gdproperty_internal(type_, defaultval, 2)

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
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/py4godot/{core_folder}/__init__.py", "w") as init_file:
            init_file.write(import_string_core)

        """generate the __init__ file needed for the py4godot module"""
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/py4godot/__init__.py", "w") as init_file:
            init_file.write(import_string_py4godot)
    else:
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/py4godot/{core_folder}/__init__.py", "w") as init_file:
            init_file.write(import_string_core)

        """generate the __init__ file needed for the py4godot module"""
        with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/py4godot/__init__.py", "w") as init_file:
            init_file.write(import_string_py4godot)


    #with open(f"{build_folder}/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/py4godot/pluginscript_api/hints/__init__.py", "w") as init_file:
    #    init_file.write(import_string_hints)
