import inspect
from py4godot.pluginscript_api.utils.helpers import get_variant_type
import py4godot.pluginscript_api.utils.annotations as annotations
from py4godot.py_classes.Object import Object
from py4godot.py_classes.core import Signal, Callable
from py4godot.utils.utils import py_string_to_string_name


class SignalArg:
    def __init__(self, name, type_):
        self.name = name
        self.variant_type = get_variant_type(type_)

    def get_name(self):
        return self.name.encode("utf-8")

def signal(args=[]):
    stack = inspect.stack()
    name = stack[0].code_context[0].split("=")[0].split(":")[0].strip()
    annotations.signal(name, args)
    return None

callables = []

class GDSignal(Signal):
    @staticmethod
    def new0():
        _class = GDSignal.__new__(GDSignal)
        #TODO minimize: _class.Signal_internal_class_ptr = CPPSignal.py_new0()
        return _class

    @staticmethod
    def new1(from_):
        assert from_ is not None
        _class = GDSignal.__new__(GDSignal)
        #TODO minimize:_class.Signal_internal_class_ptr = CPPSignal.py_new1(from_.Signal_internal_class_ptr)
        return _class

    @staticmethod
    def new2(object_, signal):
        assert object_ is not None
        assert signal is not None
        _class = GDSignal.__new__(GDSignal)
        #TODO minimize:_class.Signal_internal_class_ptr = CPPSignal.py_new2(object_, signal)
        return _class

    def __init__(self, *args):
        self = GDSignal.new0()

    def connect(self, function, flags=0):
        function_name = function.__name__
        parent = getattr(function, '__self__', None)
        if parent is None:
            parent = Object()
        parent.get_class()
        b_function_name = function_name.encode("utf-8")
        gd_function_name = py_string_to_string_name(b_function_name)
        callable_obj = Callable.new2(parent, gd_function_name)
        super().connect(callable_obj)

    def disconnect(self, function):
        function_name = function.__name__
        parent = getattr(function, '__self__', None)
        if parent is None:
            parent = Object()
        parent.get_class()
        b_function_name = function_name.encode("utf-8")
        gd_function_name = py_string_to_string_name(b_function_name)
        callable_obj = Callable.new2(parent, gd_function_name)
        super().disconnect(callable_obj)


class BuiltinSignal(Signal):
    def __init__(self, parent, name):
        self.parent_ptr = parent
        self.signal_name = py_string_to_string_name(name)

    def connect(self, function, flags=0):
        function_name = function.__name__
        parent = getattr(function, '__self__', None)
        if parent is None:
            parent = Object()
        b_function_name = function_name.encode("utf-8")
        gd_function_name = py_string_to_string_name(b_function_name)
        callable_obj = Callable.new2(parent, gd_function_name)
        self.parent().connect(self.signal_name, callable_obj)

    def parent(self):
        return Object()

    def disconnect(self, function):
        function_name = function.__name__
        parent = getattr(function, '__self__', None)
        if parent is None:
            parent = Object()
        parent.get_class()
        b_function_name = function_name.encode("utf-8")
        gd_function_name = py_string_to_string_name(b_function_name)
        callable_obj = Callable.new2(parent, gd_function_name)
        self.parent().disconnect(self.signal_name, callable_obj)

    def is_null(self):
        proxy_signal = Signal()
        return proxy_signal.is_null()

    def get_object(self):
        return self.parent()

    def get_object_id(self):
        return self.parent().get_instance_id()

    def get_name(self):
        return self.signal_name

    def is_connected(self, callable_obj):
        return self.parent().is_connected(self.signal_name, callable_obj)

    def get_connections(self):
        return self.get_signal_connection_list(self.signal_name)

    def __eq__(self, other):
        proxy_signal = Signal()
        return proxy_signal.__eq__(other)

    def __ne__(self, other):
        proxy_signal = Signal()
        return proxy_signal.__ne__(other)
