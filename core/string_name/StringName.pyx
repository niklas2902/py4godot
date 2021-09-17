from core.string.String cimport String
from cython.operator cimport dereference
from core.string_name.string_name_binding cimport *


cdef api set_api_core_string_name(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class StringName:

    def __init__(self,string):
        if(type(string) == String):
            api_core.godot_string_name_new(self._native, &(<String>string)._native)
        else:
            api_core.godot_string_name_new_data(self._native, <char*>string)


    def get_name(self):
        return String.new_static(api_core.godot_string_name_get_name(self._native))

    def __del__(self):
        api_core.godot_string_name_destroy(self._native)

    def __str__(self):
        cdef unicode python_string = get_python_string_from_w_string_name(self._native)
        return python_string

cdef unicode get_python_string_from_w_string_name(const godot_string_name* string_name):
    cdef godot_string string = api_core.godot_string_name_get_name(string_name)
    cdef const wchar_t* c_string = api_core.godot_string_wide_str(&string)
    return <unicode>PyUnicode_FromWideChar(c_string,-1)
