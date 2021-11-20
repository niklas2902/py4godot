from cython.operator cimport dereference
from godot_bindings.binding_external cimport *
from utils.Wrapper cimport Wrapper
from cpython cimport Py_INCREF, Py_DECREF, PyObject

cdef api void* wrapper_create(void *data, const void *type_tag, godot_object *instance):
    cdef Wrapper wrapper = Wrapper()
    wrapper.godot_owner = instance
    Py_INCREF(wrapper)
    return instance
cdef api wrapper_destroy(void *data, void *wrapper):
    print("destroy")
    """
    if (wrapper)
		godot::api->godot_free(wrapper);
    """
    Py_DECREF(<Wrapper>wrapper)

