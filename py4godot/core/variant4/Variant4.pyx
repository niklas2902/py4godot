from py4godot.core.variant4.variant_utils cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference
from libc.stdlib cimport malloc, free
gdnative_interface = get_interface()


primitive_types = {GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT,GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT, GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL}


cdef class Variant:
    pass