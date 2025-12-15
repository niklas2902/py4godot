from py4godot.classes.Object import Object
from typing import Any, List

from py4godot.classes.core import *

def get_event_loop():
    """
        Gets the current asyncio loop instance.
    """
    pass


class SignalArg:
    """
    Represents an argument for a Godot signal.

    This class is used to define the parameters that a signal can pass when emitted.

    Args:
        name: The name of the argument.
        type_: The type of the argument.
    """

    def __init__(self, name, type_) -> None:
        pass


def signal(args: List[SignalArg]) -> GDSignal:
    """
    Creates a new GDSignal with the specified arguments.

    Args:
        args (List[SignalArg]): A list of signal arguments.

    Returns:
        GDSignal: A new signal instance with the specified arguments.
    """
    pass


class GDSignal(Signal):
    """
    Represents a custom Godot signal that can be emitted and connected to callbacks.

    This class provides methods for creating, connecting, and disconnecting signals.
    """

    @staticmethod
    def new0() -> GDSignal:
        """
        Creates a new empty GDSignal instance.

        Returns:
            GDSignal: A new empty signal instance.
        """
        pass

    @staticmethod
    def new1(from_: Signal) -> GDSignal:
        """
        Creates a new GDSignal from an existing Signal.

        Args:
            from_ (Signal): The source signal to copy from.

        Returns:
            GDSignal: A new signal instance based on the provided signal.
        """
        pass

    @staticmethod
    def new2(object_: Object, signal: StringName) -> GDSignal:
        """
        Creates a new GDSignal connected to a specific object and signal name.

        Args:
            object_ (Object): The object that owns the signal.
            signal (StringName): The name of the signal.

        Returns:
            GDSignal: A new signal instance connected to the specified object and signal.
        """
        pass

    def connect(self, function: Any, flags: int = 0) -> None:
        """
        Connects this signal to the specified function.

        Args:
            function (Any): The function or callable to connect to this signal.
            flags (int, optional): Connection flags that control how the connection works.
                Defaults to 0.
        """
        pass

    def disconnect(self, function: Any) -> None:
        """
        Disconnects the specified function from this signal.

        Args:
            function (Any): The function or callable to disconnect from this signal.
        """
        pass


    def wait_emit(self) -> None:
        """This can be used similarily to the Godot await to wait for a signal to then procede with the program flow
            Example:
                ```python

                from py4godot.signals import get_event_loop
                import asyncio
                ...
                    def start_event_loop_thread(self):
                        asyncio.run_coroutine_threadsafe(self.wait_for_signal(), get_event_loop())

                    async def wait_for_signal(self):
                        print("waiting for signal visibility_changed")
                        await self.visibility_changed.wait_emit()
                        print("executed after signal visibility_changed")
                ```
        """

class BuiltinSignal(Signal):
    """
    Represents a built-in Godot signal associated with a specific object.

    This class provides methods for connecting to and disconnecting from built-in signals.
    """

    def __init__(self, parent: Object, name: StringName) -> BuiltinSignal:
        """
        Initializes a new BuiltinSignal instance.

        Args:
            parent (Object): The object that owns the signal.
            name (StringName): The name of the signal.

        Returns:
            BuiltinSignal: A new built-in signal instance.
        """
        pass

    def connect(self, function: Any, flags: int = 0) -> None:
        """
        Connects this built-in signal to the specified function.

        Args:
            function (Any): The function or callable to connect to this signal.
            flags (int, optional): Connection flags that control how the connection works.
                Defaults to 0.
        """
        pass

    def disconnect(self, function: Any) -> None:
        """
        Disconnects the specified function from this built-in signal.

        Args:
            function (Any): The function or callable to disconnect from this signal.
        """
        pass

    def wait_emit(self) -> None:
        """This can be used similarily to the Godot await to wait for a signal to then procede with the program flow
            Example:
                ```python

                from py4godot.signals import get_event_loop
                import asyncio
                ...
                    def start_event_loop_thread(self):
                        asyncio.run_coroutine_threadsafe(self.wait_for_signal(), get_event_loop())

                    async def wait_for_signal(self):
                        print("waiting for signal visibility_changed")
                        await self.visibility_changed.wait_emit()
                        print("executed after signal visibility_changed")
                ```
        """