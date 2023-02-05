from cython.operator cimport dereference
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.print_tools import *

cdef GDExtensionObjectPtr get_owner (GDExtensionScriptInstanceDataPtr p_instance) :
    print_warning("-------------------instance:get_owner---------------")
    cdef InstanceData data = <InstanceData>p_instance
    return data.owner.godot_owner

cdef GDExtensionBool is_placeholder(GDExtensionScriptInstanceDataPtr p_instance):
    print_warning("------is_place-holder-------")
    return 1


cdef GDExtensionScriptInstanceInfo get_instance():
    return native_script_instance

cdef GDExtensionScriptInstanceInfo* get_instance_ptr():
    return &native_script_instance


native_script_instance.get_owner_func = get_owner
native_script_instance.is_placeholder_func = is_placeholder