# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
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
    object c_string_to_string_ptr(const char* string)
    object c_string_to_string_name_ptr(const char* string)
    void destroy_object(void* godot_owner)
    void delete_char_array(char* array)
    shared_ptr[bridge.StringName] create_string_name_from_ptr(void* godot_owner)

    void break_()

cdef extern from "py4godot/cpputils/ScriptHolder.h":
    PyObject* get_py_script(int id)
cdef object py_c_string_to_string_name(char* string)
cdef object py_string_to_string_name(str string)
cdef object py_c_string_to_string(char* string)
cdef object py_string_to_string(str string)
cdef unicode gd_string_to_py_string(object string)
cdef unicode gd_string_to_py_string_instance(object string)
cdef unicode gd_string_name_to_py_string(object string_name)

cdef PyObject* to_py_object(val) # converting c++ values to python objects (especially useful for typedarrays/intTypedArray, as it works with ints, which are interpreted as C++)
cdef bool shouldCreateObject = True