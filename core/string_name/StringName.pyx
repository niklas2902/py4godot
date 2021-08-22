from core.string.String cimport String
from cython.operator cimport dereference
from core.string_name.string_name_binding cimport *


cdef api set_api_core_string_name(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class StringName:

    def __init__(self,String string):
        api_core.godot_string_name_new(&self._native, &string._native)


    def get_name(self):
        return String.new_static(api_core.godot_string_name_get_name(&self._native))

    def __del__(self):
        api_core.godot_string_name_destroy(&self._native)

    def __str__(self):
        return get_python_string_from_w_string_name(&self._native)

cdef unicode get_python_string_from_w_string_name(const godot_string_name* string_name):
    print("get string from w_string")
    print(dereference(string_name))
    api_core.godot_string_name_get_data_unique_pointer(string_name)
    print("name created")
    #cdef const wchar_t* c_string = api_core.godot_string_wide_str(&string)
    return ""
