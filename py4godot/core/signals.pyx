from cpython.ref cimport Py_INCREF, Py_DECREF
from py4godot.classes.core cimport *
from py4godot.classes.Object.Object import Object
from libcpp.memory cimport make_shared

from py4godot.utils.print_tools import print_error
from py4godot.utils.utils cimport *

callables = []
cdef class GDSignal():


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
        print_error("connect - Object:", parent)
        parent.get_class()
        print_error(f"function_name:{ function_name}")
        cdef bytes b_function_name = function_name.encode("utf-8")
        cdef char* c_function_name = b_function_name
        # Don't use StringName::new2 here. Somehow it results in an empty string
        cdef StringName gd_function_name = py_c_string_to_string_name(c_function_name)
        cdef Callable callable = Callable.new2(parent, gd_function_name )
        Py_INCREF(callable)

        super().connect(callable)


    def disconnect(self, object function ):
        pass