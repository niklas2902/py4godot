import inspect
from typing import TypeVar, List

from py4godot.pluginscript_api.hints.BaseHint import BaseHint
from py4godot.pluginscript_api.utils.annotations import signal, prop_return
from py4godot.signals import SignalArg

# Type variable for generic type annotations
T = TypeVar("T")


# Very experimental
def gdproperty(type_: type, defaultval: T, hint: BaseHint = BaseHint(), hint_string: str = "")->T:
    """
    Automatically registers a Godot property by extracting the property name from the code context.

    This experimental function inspects the current stack to determine the variable name
    being assigned to, and uses it as the property name. This allows for a more concise
    property declaration syntax.

    Args:
        type_ (type): The type of the property.
        defaultval (T): The default value of the property.
        hint (BaseHint, optional): Property hint to guide the editor interface.
            Defaults to BaseHint().
        hint_string (str, optional): Additional hint information as a string.
            Defaults to "".

    Returns:
        T: The default value passed in, allowing for variable initialization.

    Example:
        @gdclass
        class MyNode(Node):
            health = gdproperty(int, 100, RangeHint(0, 100), "Player health")

    Note:
        This function is marked as very experimental and may not work in all contexts
        or may change in future versions.
    """
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    return prop_return(name, type_, defaultval, hint, hint_string)



def gdprop(defaultval: T, hint: BaseHint = BaseHint(), hint_string: str = "")->T:
    """
    Automatically registers a Godot property by extracting both name and type from code context.

    This function inspects the current stack to determine the variable name and type annotation
    from the code, then registers it as a Godot property. This provides an even more concise
    syntax than gdproperty().

    Args:
        defaultval (T): The default value of the property.
        hint (BaseHint, optional): Property hint to guide the editor interface.
            Defaults to BaseHint().
        hint_string (str, optional): Additional hint information as a string.
            Defaults to "".

    Returns:
        T: The default value passed in, allowing for variable initialization.

    Example:
        @gdclass
        class MyNode(Node):
            health: int = gdprop(100, RangeHint(0, 100), "Player health")

    Note:
        This function relies on runtime code inspection and type annotations in
        the assignment statement, which may have limitations in certain contexts.
    """
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    type_ = eval(stack[1].code_context[0].split("=")[0].split(":")[1].strip())
    return prop_return(name, type_, defaultval, hint, hint_string)


def gdsignal(args: List[SignalArg] = []):
    """
    Automatically registers a Godot signal by extracting the signal name from code context.

    This function inspects the current stack to determine the variable name being assigned to,
    and uses it as the signal name. This allows for a more concise signal declaration syntax.

    Args:
        args (List[SignalArg], optional): A list of signal arguments.
            Defaults to an empty list.

    Returns:
        None: Returns None to allow for variable assignment.

    Example:
        @gdclass
        class MyNode(Node):
            health_changed = gdsignal([SignalArg("new_health", int)])

    Note:
        This function relies on runtime code inspection, which may have limitations
        in certain contexts or editor environments.
    """
    stack = inspect.stack()
    name = stack[1].code_context[0].split("=")[0].split(":")[0].strip()
    signal(name, args)
    return None