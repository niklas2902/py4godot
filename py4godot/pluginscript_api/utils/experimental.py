import inspect
from typing import TypeVar, List

from py4godot.pluginscript_api.hints.BaseHint import BaseHint
from py4godot.pluginscript_api.utils.annotations import prop, signal
from py4godot.classes.core import Callable, Signal
from py4godot.utils.print_tools import print_error

T = TypeVar("T")
#Very experimental
def gdproperty(type_:type, defaultval:T, hint:BaseHint = BaseHint(), hint_string:str = ""):
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    prop(name, type_,defaultval, hint, hint_string)
    return defaultval

def gdprop(defaultval:T, hint:BaseHint = BaseHint(), hint_string:str = ""):
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    type_ = eval(stack[1].code_context[0].split("=")[0].split(":")[1].strip())
    prop(name, type_,defaultval, hint, hint_string)
    return defaultval


def gdsignal(args: List[SignalArg]=[]):
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    signal(name, args)
    return None