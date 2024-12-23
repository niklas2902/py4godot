# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.cpp_bridge cimport *
from libcpp.vector cimport vector
from libcpp.memory cimport shared_ptr
from libcpp.string cimport string
cdef extern from "help_types.h":
    ctypedef struct TransferObject:
        vector[shared_ptr[CPPSignalDescription]] signals
        vector[shared_ptr[CPPPropertyDescription]] properties
        vector[shared_ptr[CPPMethodDescription]] methods
        string icon_path;
        vector [PyObject*] default_values
        PyObject* class_
        PyObject* instance
        bool is_tool


    ctypedef struct CPPSignalArg:
        char* name;
        GDExtensionVariantType type;

    ctypedef struct CPPSignalDescription:
        Dictionary dictionary;
        StringName name;
        vector [CPPSignalArg] args;

    ctypedef struct CPPPropertyDescription:
        GDExtensionVariantType type_,
        StringName& name,
        StringName& class_name,
        uint32_t hint,
        String& hint_string,
        uint32_t usage


    ctypedef struct CPPMethodDescription:
        shared_ptr[CPPPropertyDescription] return_value;
        vector[shared_ptr[CPPPropertyDescription]] args;
        StringName name;
        int flags;
        uint32_t id;

cdef extern from "py4godot/pluginscript_api/utils/signal_description_utils.h":
    shared_ptr[CPPSignalDescription] init_signal_description(char* name, vector[CPPSignalArg]& args)
    void print_error(char* text)

cdef extern from "py4godot/pluginscript_api/utils/property_description_utils.h":
    shared_ptr[CPPPropertyDescription] init_property_description(
    GDExtensionVariantType type_,
    StringName name,
    StringName class_name,
    uint32_t hint,
    String hint_string,
    uint32_t usage
)

cdef extern from "py4godot/pluginscript_api/utils/method_description_utils.h":
    shared_ptr[CPPMethodDescription] init_method_description(StringName name, vector[shared_ptr[CPPPropertyDescription]]& properties)