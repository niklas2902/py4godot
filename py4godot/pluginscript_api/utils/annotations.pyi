from typing import TypeVar

from py4godot.pluginscript_api.hints import *
from py4godot.pluginscript_api.hints.BaseHint import BaseHint

T = TypeVar("T")

def gdclass(cls:object)->None:pass

def gdtool(cls:object)->None:pass

def prop(name:str,type_:object, defaultval:object, hint:BaseHint = BaseHint(""), hint_string:str = "")->None:pass

def gdmethod(func)->None:pass
def private(func)->None:pass

def signal(name, args:list[SignalArg] = [])->None:pass

def register_signal(signal_name:str, args=None)->None:
    if args is None:
        args = dict()