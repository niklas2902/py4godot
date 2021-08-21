from godot_api.binding cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from utils.Wrapper cimport *
cdef class GDClassWrapper(object):

    cdef PyObject * py_obj

