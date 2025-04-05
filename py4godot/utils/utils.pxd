# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.classes.core as core
cimport py4godot.classes.cpp_bridge as bridge
from libcpp.memory cimport shared_ptr
cdef extern from "py4godot/cpputils/utils.h":
    bridge.StringName c_string_to_string_name(const char* string)
    bridge.String c_string_to_string(const char* string)
    #const char * gd_string_to_c_string( bridge.String string, int length)
    void gd_string_to_c_string(bridge.String string, int length, char** res_string)
    void gd_string_to_c_string_instance(bridge.String string, int length, char** res_string)
    bool is_ptr_null[T](const shared_ptr[T]& ptr)
    bool is_none(PyObject* py_object)
    shared_ptr[To] my_static_pointer_cast[From,To](const shared_ptr[From]& ptr) except +
    shared_ptr[bridge.Dictionary] empty_dictionary_pointer() except +
    shared_ptr[bridge.String] c_string_to_string_ptr(const char* string)
    shared_ptr[bridge.StringName] c_string_to_string_name_ptr(const char* string)
    void destroy_object(void* godot_owner)
    void delete_char_array(char* array)

    void break_()

cdef extern from "py4godot/cpputils/ScriptHolder.h":
    PyObject* get_py_script(int id)
cdef core.StringName py_c_string_to_string_name(char* string)
cdef core.String py_c_string_to_string(char* string)
cdef unicode gd_string_to_py_string(core.String string)
cdef unicode gd_string_to_py_string_instance(core.String string)
cdef unicode gd_string_name_to_py_string(core.StringName string_name)

cdef PyObject* to_py_object(val) # converting c++ values to python objects (especially useful for typedarrays/intTypedArray, as it works with ints, which are interpreted as C++)
cdef bool shouldCreateObject = True