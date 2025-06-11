from typing import TypeVar

from py4godot.pluginscript_api.hints import *
from py4godot.pluginscript_api.hints.BaseHint import BaseHint

from py4godot.signals import SignalArg

# Type variable for generic type annotations
T = TypeVar("T")


def gdclass(cls: object) -> None:
    """
    Decorator that marks a Python class as a Godot class.

    This allows the Python class to be used within the Godot engine and
    exposes it to the Godot script system.

    Args:
        cls (object): The class to be registered as a Godot class.

    Returns:
        None

    Example:
        @gdclass
        class MyNode(Node):
            pass
    """
    pass


def gdtool(cls: object) -> None:
    """
    Decorator that marks a Python class as a Godot tool.

    Classes marked with this decorator can run in the Godot editor,
    allowing for custom editor functionality.

    Args:
        cls (object): The class to be registered as a Godot tool.

    Returns:
        None

    Example:
        @gdtool
        @gdclass
        class MyEditorPlugin(EditorPlugin):
            pass
    """
    pass


def prop(name: str, type_: object, defaultval: object, hint: BaseHint = BaseHint(""), hint_string: str = "") -> None:
    """
    Defines a property for a Godot class that will be visible in the inspector.

    Args:
        name (str): The name of the property.
        type_ (object): The type of the property.
        defaultval (object): The default value of the property.
        hint (BaseHint, optional): Property hint to guide the editor interface.
            Defaults to BaseHint("").
        hint_string (str, optional): Additional hint information as a string.
            Defaults to "".

    Returns:
        None

    Example:
        @gdclass
        class MyNode(Node):
            def _init(self):
                prop("health", int, 100, RangeHint(0, 100), "Player health")
    """
    pass


def gdmethod(func) -> None:
    """
    Decorator that marks a method as accessible from Godot.
    This is by default and just if you want to clarify your code more.

    Args:
        func: The function to be registered as a Godot method.

    Returns:
        None

    Example:
        @gdclass
        class MyNode(Node):
            @gdmethod
            def take_damage(self, amount):
                pass
    """
    pass


def private(func) -> None:
    """
    Decorator that marks a method as private to the Python implementation.

    Methods with this decorator won't be exposed to the Godot engine.

    Args:
        func: The function to be marked as private.

    Returns:
        None

    Example:
        @gdclass
        class MyNode(Node):
            @private
            def _internal_calculation(self):
                pass
    """
    pass


def signal(name, args: list[SignalArg] = []) -> None:
    """
    Defines a signal for a Godot class.

    This function is used within a class definition to declare signals
    that can be emitted from the class.

    Args:
        name (str): The name of the signal.
        args (list[SignalArg], optional): A list of signal arguments.
            Defaults to an empty list.

    Returns:
        None

    Example:
        @gdclass
        class MyNode(Node):
            test_signal = signal([SignalArg("test_arg", int)])
    """
    pass


def register_signal(signal_name: str, args=None) -> None:
    """
    Old way to registering a signal. Using this is deprecated.

    Similar to the 'signal' function but can be called at any point
    in the code, not just during class initialization.

    Args:
        signal_name (str): The name of the signal to register.
        args (dict, optional): A dictionary mapping argument names to their types.
            Defaults to an empty dictionary.

    Returns:
        None

    Example:
        # Register a signal with no arguments
        register_signal("game_over")

        # Register a signal with arguments
        register_signal("item_collected", {"item_id": int, "item_name": str})
    """
    if args is None:
        args = dict()