from py4godot.classes.generated4_core cimport *
cimport py4godot.classes.cpp_bridge as bridge
from cpython cimport Py_INCREF, Py_DECREF, PyObject
cdef api object type_helper_create_vector3(bridge.Vector3 bridge_vector):
    cdef Vector3 val = Vector3()
    val.Vector3_internal_class = bridge_vector
    Py_INCREF(val)
    return val

cdef api object type_helper_create_string(bridge.String bridge_string):
    cdef String val = String()
    val.String_internal_class = bridge_string
    Py_INCREF(val)
    return val