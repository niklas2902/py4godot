# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.cpp_bridge cimport *
from libcpp.vector cimport vector
from libcpp.memory cimport shared_ptr
from libcpp.string cimport string
cdef extern from "help_types.h":
    ctypedef struct TransferObject:
        vector[Dictionary] signals
        vector[GDExtensionPropertyInfo] properties
        vector[GDExtensionMethodInfo] methods
        string icon_path;
        vector [PyObject*] default_values
        PyObject* class_
        PyObject* instance
        bool is_tool


    ctypedef struct CPPSignalArg:
        char* name;
        GDExtensionVariantType type;

cdef extern from "py4godot/pluginscript_api/utils/signal_description_utils.h":
    void init_signal_description(char* name, vector[CPPSignalArg]& args, shared_ptr[Dictionary]& output)
    void print_error(char* text)

cdef extern from "py4godot/pluginscript_api/utils/property_description_utils.h":
    void init_property_description(GDExtensionPropertyInfo& property_info,
    GDExtensionVariantType type_,
    StringName name,
    StringName class_name,
    uint32_t hint,
    String hint_string,
    uint32_t usage
)

cdef extern from "py4godot/pluginscript_api/utils/method_description_utils.h":
    void init_method_description(StringName name,vector[GDExtensionPropertyInfo]& properties,  GDExtensionMethodInfo& method_info)