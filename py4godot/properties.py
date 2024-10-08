import inspect
from typing import TypeVar

from py4godot.hints.BaseHint import BaseHint
from py4godot.pluginscript_api.utils.annotations import prop

T = TypeVar("T")
#Very experimental
def _gdproperty_internal(type_:type, defaultval:T, stack_index = 1, hint = BaseHint()):
    stack = inspect.stack()
    name = stack[stack_index].code_context[0].split("=")[0].split(":")[0].strip()
    prop(name, type_,defaultval, hint)
    return defaultval


#Very experimental
def gdproperty(type_:type, defaultval:T, hint = BaseHint()):
    return _gdproperty_internal(type_, defaultval, 2, hint)
