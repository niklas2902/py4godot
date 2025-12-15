# distutils: language=c++
import asyncio
import inspect
from libcpp.memory cimport make_shared

import py4godot.classes.Object as obj
from py4godot.classes.Node3D import Node3D
from py4godot.classes.ResourceLoader import ResourceLoader
from py4godot.classes.core import Callable, Signal
from py4godot.utils.utils cimport *
import py4godot.pluginscript_api.utils.annotations as annotations
from py4godot.pluginscript_api.utils.helpers cimport get_variant_type


loop = None
def set_event_loop(loop_):
    global loop
    loop = loop_
def get_event_loop():
    return loop
cdef class SignalArg:
    def __init__(self, name, type_):
        self.name = name
        self.variant_type = get_variant_type(type_)

    cdef char* get_name(self):
        return self.name.encode("utf-8")

def signal(list args = []):
    stack = inspect.stack()
    name = stack[0].code_context[0].split("=")[0].split(":")[0].strip()
    annotations.signal(name, args)
    return None


callables = []
class GDSignal(Signal):
    @staticmethod
    def new0():
        cdef object _class = GDSignal()
        _class._ptr = Signal.new0()._ptr
        return _class
    @staticmethod
    def new1(object from_):
        assert(not from_ is None)

        cdef object _class = GDSignal()
        _class._ptr = Signal.new1(from_)._ptr
        return _class
    @staticmethod
    def new2(object object_, object signal):
        assert(not object_ is None)
        assert(not signal is None)

        cdef object _class = GDSignal()
        _class.my_signal = Signal.new2(object_, signal)

        _class._ptr = _class.my_signal._ptr
        return _class

    def __init__(self, *args):
        super().__init__()
    def connect(self, object function , int flags =0):
        if isinstance(function, Callable):
            super().connect(function)
            return

        cdef str function_name = function.__name__
        cdef object parent = (function.__self__ if hasattr(function, '__self__') else None)
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef object gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef object callable = Callable.new2(parent, gd_function_name )
        callables.append(callable)
        callables.append(gd_function_name)
        super().connect(callable)


    def disconnect(self, object function ):
        cdef str function_name = function.__name__
        cdef object parent =  (function.__self__ if hasattr(function, '__self__') else None)
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef object gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef object callable = Callable.new2(parent, gd_function_name )
        super().disconnect(callable)


    async def wait_emit(self):
        o = Node3D.new()
        script = ResourceLoader.instance().load("res://addons/py4godot/signal_script.py")
        o.set_script(script)
        self.connect(o.get_pyscript().handler)
        await self.signal_check_loop(o)
        o.queue_free()

    async def signal_check_loop(self, o):
        while not o.get_pyscript().handled:
            await asyncio.sleep(0.01)  # Check every 0.01 seconds



class BuiltinSignal(Signal):
    def __init__(self, parent, name):
        super().__init__()
        self._parent = parent
        self.signal_name =  name

    def connect(self, object function , int flags =0):
        if isinstance(function, Callable):
            self.parent().connect(self.signal_name, function)
            return
        cdef str function_name = function.__name__
        cdef object parent = function.__self__ if hasattr(function, '__self__') else None
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        cdef object gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef object callable = Callable.new2(parent, gd_function_name )
        self.parent().connect(self.signal_name, callable)

    def parent(self):
        cdef object o = obj.Object.construct_without_init()
        o._ptr = self._parent._ptr
        return o


    def disconnect(self, object function ):
        cdef str function_name = function.__name__
        cdef object parent = function.__self__ if hasattr(function, '__self__') else None
        parent.get_class()
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef object gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef object callable = Callable.new2(parent, gd_function_name )
        self.parent().disconnect(self.signal_name, callable)

    def is_null(self):
        proxy_signal = Signal.new2(self.parent(), self.signal_name)
        return proxy_signal.is_null()

    def get_object(self):
        return self.parent()
    def get_object_id(self):
        return self.parent().get_instance_id()

    def get_name(self):
        return self.signal_name

    def is_connected(self, object callable ):
        return self.parent().is_connected(self.signal_name, callable)

    def get_connections(self):
        return self.get_signal_connection_list(self.signal_name)

    async def wait_emit(self):
        o = Node3D.new()
        script = ResourceLoader.instance().load("res://addons/py4godot/signal_script.py")
        o.set_script(script)
        self.connect(o.get_pyscript().handler)
        await self.signal_check_loop(o)
        o.queue_free()

    async def signal_check_loop(self, o):
        while not o.get_pyscript().handled:
            await asyncio.sleep(0.01)  # Check every 0.01 seconds


    def __eq__(self, other):
        proxy_signal = Signal.new2(self.parent(), self.signal_name)
        return proxy_signal.__eq__(other)
    def __ne__(self, other):
        proxy_signal = Signal.new2(self.parent(), self.signal_name)
        return proxy_signal.__ne__(other)