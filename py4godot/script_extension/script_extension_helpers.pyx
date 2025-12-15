# distutils: language=c++
import threading

from py4godot.classes.Object import Object
from py4godot.classes.core import StringName
from py4godot.signals import GDSignal
import py4godot.signals
from py4godot.classes.core import Dictionary
from py4godot.wrappers.wrappers cimport create_wrapper_from_Dictionary_ptr
from py4godot.classes.cpp_bridge cimport Dictionary as BridgeDictionary
from py4godot.utils.print_tools import *
import traceback
from cpython cimport PyObject
from py4godot.utils.utils cimport *
import py4godot.utils.utils as py_utils
from libcpp.vector cimport vector
from cpython.unicode cimport PyUnicode_AsUTF8, PyUnicode_Check
from libcpp.string cimport string
import asyncio

instantiated_classes = []
loop = None

cdef api PyObject*  instantiate_class(PyObject* gd_class):
    cdef object class_ = <object>gd_class
    if class_ == None:
        class_ = Object

    cdef object o
    try:
        py_utils.shouldCreateObject = False
        o = class_()
        o._ptr = o.generate_wrapper()
        py_utils.shouldCreateObject = True
        o.init_signals()
    except Exception as e:
        print_error("Exception - creating class didn't work")
        print_error(str(e).encode("utf-8"))
        print_error(traceback.format_exc().encode("utf-8"))
        o = Object()
    instantiated_classes.append(o)
    return <PyObject*>o

cdef api string get_type(PyObject* gd_class):
    cdef object class_ = <object>gd_class
    if class_ is None:
        return string()

    cdef object o
    cdef object classname
    cdef const char * cname
    try:
        o = <object>gd_class
        classname = o.get_type()  # Python string
        if not PyUnicode_Check(classname):
            # Handle the case where classname is not a string
            return string()
        cname = PyUnicode_AsUTF8(classname)  # Convert to C string
        if cname != NULL:
            return string(cname)  # Convert to std::string

    except Exception as e:
        print_error("Exception - getting type didn't work")
        print_error(str(e).encode("utf-8"))
        import traceback
        print_error(traceback.format_exc().encode("utf-8"))

    return string()

cdef api void copy_source_to_dest(object source, object dest):
    for name, value in vars(source).items():
        if name.startswith('__') and name.endswith('__'):
            continue  # skip dunder attributes
        setattr(dest, name, value)

cdef api void create_signals(PyObject* instance, vector[shared_ptr[BridgeDictionary]]& signals):
    cdef object py_instance = <object>instance
    cdef object name
    cdef str py_name
    cdef object signal
    cdef object py_signal = Dictionary.new0()
    py_signal.shouldBeDeleted = False
    cdef object gd_name
    try:
        for signal_ind in range(signals.size()):
            py_signal._ptr = create_wrapper_from_Dictionary_ptr(signals[signal_ind])
            gd_name = py_utils.py_string_to_string_name("name")
            py_name = str(py_signal.get("name").substr(0))
            signal = GDSignal.new2(py_instance, StringName.new2(py_name))
            setattr(py_instance, py_name, signal)
            py_signal._ptr = create_wrapper_from_Dictionary_ptr(empty_dictionary_pointer())

    except Exception as e:
        print_error("Exception happened:", e)
        print_error(traceback.format_exc())


cdef api void init_asyncio():
    global loop
    loop = asyncio.new_event_loop()

    def run_loop():
        asyncio.set_event_loop(loop)
        loop.run_forever()

    loop_thread = threading.Thread(target=run_loop, daemon=True)
    loop_thread.start()
    py4godot.signals.set_event_loop(loop)
    print(f"loop:{loop}")
