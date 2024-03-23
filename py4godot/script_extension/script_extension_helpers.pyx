import traceback
from py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.classes.Node3D.Node3D as node3d
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.pluginscript_api.utils.utils cimport *

instantiated_classes = []

cdef api PyObject*  instantiate_class(PyObject* gd_class):
    cdef object o
    try:
        o = (<object>gd_class)()
    except Exception as e:
        print_error("Exception - creating class didn't work")
        print_error(str(e).encode("utf-8"))
        print_error(traceback.format_exc().encode("utf-8"))
        o =node3d.Node3D()
    instantiated_classes.append(o)
    return <PyObject*>o