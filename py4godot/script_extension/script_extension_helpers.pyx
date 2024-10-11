# distutils: language=c++
from py4godot.classes.core cimport StringName, Signal, Callable, String
from py4godot.signals cimport GDSignal
from py4godot.classes.core cimport Dictionary
from py4godot.classes.cpp_bridge cimport Dictionary as BridgeDictionary
from py4godot.utils.print_tools import *
import traceback
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.utils cimport *
cimport py4godot.utils.utils as py_utils
from libcpp.vector cimport vector

instantiated_classes = []

cdef api PyObject*  instantiate_class(PyObject* gd_class):
    cdef object class_ = <object>gd_class
    if class_ == None:
        return NULL

    cdef object o
    try:
        py_utils.shouldCreateObject = False
        o = class_()
        py_utils.shouldCreateObject = True
    except Exception as e:
        print_error("Exception - creating class didn't work")
        print_error(str(e).encode("utf-8"))
        print_error(traceback.format_exc().encode("utf-8"))
        return NULL
    instantiated_classes.append(o)
    return <PyObject*>o

cdef api void create_signals(PyObject* instance, vector[shared_ptr[BridgeDictionary]]& signals):
    cdef object py_instance = <object>instance
    cdef StringName name
    cdef str py_name
    cdef GDSignal signal
    cdef Dictionary py_signal = Dicionary()
    cdef StringName gd_name
    try:
        for signal_ind in range(signals.size()):
            py_signal.Dictionary_internal_class_ptr = <shared_ptr[BridgeDictionary]> signals[signal_ind]
            gd_name = StringName.new2("name")
            py_name = str(String.new2(py_signal["name"]))
            signal = GDSignal.new2(py_instance, StringName.new2(py_name))
            setattr(py_instance, py_name, signal)

            py_signal.Dictionary_internal_class_ptr = empty_dictionary_pointer()

    except Exception as e:
        print_error("Exception happened:", e)
        print_error(traceback.format_exc())