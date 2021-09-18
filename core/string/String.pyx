from core.string.string_binding cimport *

cdef api set_api_core_string(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class String:

    def __init__(self, string = None):
        print("string:", string)
        if(string == None):
            api_core.godot_string_new(&self._native)
        else:
            api_core.godot_string_new_with_wide_string(&self._native,  PyUnicode_AsWideCharString(string, NULL), len(string))

    def as_python_string(self):
        cdef const wchar_t* c_string = api_core.godot_string_wide_str(&self._native)
        return <unicode>PyUnicode_FromWideChar(c_string,-1)

    def __str__(self):
        return self.as_python_string()
