# distutils: language=c++
import inspect

from cpython.ref cimport Py_INCREF, Py_DECREF
from py4godot.classes.core cimport *
from libcpp.memory cimport make_shared
from py4godot.utils.print_tools import print_error
from py4godot.utils.utils cimport *
import py4godot.pluginscript_api.utils.annotations as annotations
from py4godot.pluginscript_api.utils.helpers cimport get_variant_type
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
cdef class GDSignal(Signal):
    @staticmethod
    def new0():
        cdef GDSignal _class = GDSignal.__new__(GDSignal)
        _class.Signal_internal_class_ptr = (CPPSignal.py_new0())
        return _class
    @staticmethod
    def new1(Signal from_):
        assert(not from_ is None)

        cdef GDSignal _class = GDSignal.__new__(GDSignal)
        _class.Signal_internal_class_ptr = (CPPSignal.py_new1(from_.Signal_internal_class_ptr))
        return _class
    @staticmethod
    def new2(Object object_, StringName signal):
        assert(not object_ is None)
        assert(not signal is None)

        cdef GDSignal _class = GDSignal.__new__(GDSignal)
        _class.Signal_internal_class_ptr = (CPPSignal.py_new2(object_.Object_internal_class_ptr, signal.StringName_internal_class_ptr))
        return _class

    def __init__(self, *args):
        self = GDSignal.new0()
    def __cinit__(self):
        self.Signal_internal_class_ptr = make_shared[CPPSignal]()

    def connect(self, object function , int flags =0):
        cdef str function_name = function.__name__
        cdef Object parent = <Object> (function.__self__ if hasattr(function, '__self__') else None)
        parent.get_class()
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef StringName gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef Callable callable = Callable.new2(parent, gd_function_name )
        super().connect(callable)


    def disconnect(self, object function ):
        cdef str function_name = function.__name__
        cdef Object parent = <Object> (function.__self__ if hasattr(function, '__self__') else None)
        parent.get_class()
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef StringName gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef Callable callable = Callable.new2(parent, gd_function_name )
        super().disconnect(callable)



cdef class BuiltinSignal(Signal):
    def __init__(self, parent, name):
        cdef Object temp_object
        self.signal_name = <StringName> name
        temp_object = parent
        Py_INCREF(temp_object) # Memory Issue: This could possibly be a memory issue. Currently on Cython3.10, if I don't keep it,
                               # the program crashes and I don't see memory issues. But in later Cython versions this could
                               # become a problem. So this should be reminded
        self.parent = temp_object
    def connect(self, object function , int flags =0):
        cdef str function_name = function.__name__
        cdef Object parent = <Object> (function.__self__ if hasattr(function, '__self__') else None)
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        cdef StringName gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef Callable callable = Callable.new2(parent, gd_function_name )
        self.parent.connect(self.signal_name, callable)


    def disconnect(self, object function ):
        cdef str function_name = function.__name__
        cdef Object parent = <Object> (function.__self__ if hasattr(function, '__self__') else None)
        parent.get_class()
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef StringName gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef Callable callable = Callable.new2(parent, gd_function_name )
        self.parent.disconnect(self.signal_name, callable)

    def is_null(self):
        proxy_signal = Signal.new2(self.parent, self.signal_name)
        return proxy_signal.is_null()

    def get_object(self):
        return self.parent
    def get_object_id(self):
        return self.parent.get_instance_id()

    def get_name(self):
        return self.signal_name

    def is_connected(self, Callable callable ):
        return self.parent.is_connected(self.signal_name, callable)

    def get_connections(self):
        return self.get_signal_connection_list(self.signal_name)

    def __eq__(self, other):
        proxy_signal = Signal.new2(self.parent, self.signal_name)
        return proxy_signal.__eq__(other)
    def __ne__(self, other):
        proxy_signal = Signal.new2(self.parent, self.signal_name)
        return proxy_signal.__ne__(other)