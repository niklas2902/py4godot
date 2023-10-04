from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.cpp_bridge cimport *
from libcpp.vector cimport vector

cdef extern from "help_types.h":
    ctypedef struct TransferObject:
        vector[Dictionary] signals


    ctypedef struct CPPSignalArg:
        char* name;
        GDExtensionVariantType type;

cdef extern from "py4godot/pluginscript_api/utils/signal_description_utils.h":
    Dictionary init_signal_description(char* name, vector[CPPSignalArg] args)
    void print_error(char* text)