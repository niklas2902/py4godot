from cython.operator cimport dereference
from godot_bindings.binding_external cimport *
from utils.Wrapper cimport Wrapper
from cpython cimport Py_INCREF, Py_DECREF, PyObject

cdef api void* wrapper_create(void *data, const void *type_tag, godot_object *instance):
    print("create_wrapper")
    cdef Wrapper wrapper = Wrapper()
    print("set_godot_owner")
    wrapper.godot_owner = instance
    print("incref")
    Py_INCREF(wrapper)
    print("return instance")
    return instance
cdef api void wrapper_destroy(void *data, void *wrapper):
    print("destroy")
    """
    if (wrapper)
		godot::api->godot_free(wrapper);
    """
    Py_DECREF(<Wrapper>wrapper)

