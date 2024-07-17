from py4godot.utils.print_tools import *
import traceback
cimport py4godot.classes.Node3D.Node3D as node3d
from cpython cimport Py_INCREF, Py_DECREF, PyObject

instantiated_classes = []

cdef api PyObject*  instantiate_class(PyObject* gd_class):
    cdef object class_ = <object>gd_class
    if class_ == None:
        return NULL

    cdef object o
    try:
        o = (class_)()
    except Exception as e:
        print_error("Exception - creating class didn't work")
        print_error(str(e).encode("utf-8"))
        print_error(traceback.format_exc().encode("utf-8"))
        return NULL
    instantiated_classes.append(o)
    return <PyObject*>o