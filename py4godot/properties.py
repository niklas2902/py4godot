import inspect
from typing import TypeVar

from py4godot.pluginscript_api.hints.BaseHint import BaseHint
from py4godot.pluginscript_api.utils.annotations import prop

T = TypeVar("T")
#Very experimental
def gdproperty(type_:type, defaultval:T, stack_index = 1):
    stack = inspect.stack()
    name = stack[stack_index].code_context[0].split("=")[0].split(":")[0].strip()
    prop(name, type_,defaultval, BaseHint(), "")
    return defaultval
