import inspect
from typing import TypeVar

from py4godot.pluginscript_api.hints.BaseHint import BaseHint
from py4godot.pluginscript_api.utils.annotations import prop

T = TypeVar("T")
#Very experimental
def gdproperty(type_:type, defaultval:T, hint:BaseHint = BaseHint(), hint_string:str = ""):
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    prop(name, type_,defaultval, hint, hint_string)
    return defaultval


