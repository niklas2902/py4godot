# distutils: language=c++
from py4godot.pluginscript_api.utils.utils cimport *
from py4godot.classes.core cimport Dictionary, String, StringName
from libcpp.vector cimport vector
from py4godot.signals cimport SignalArg
from py4godot.utils.print_tools import print_error as pe

cdef class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name, args):
        cdef int index = 0


        cdef CPPSignalArg signal_arg
        cdef vector[CPPSignalArg]  signal_args
        cdef str arg_name
        cdef char* c_name
        cdef py_bytes
        for i in range(len(args)):
            arg_name = <str>((<SignalArg>args[i]).name)
            py_bytes = arg_name.encode("utf-8")
            c_name = py_bytes
            signal_arg.name = c_name
            signal_arg.type = <GDExtensionVariantType>(<SignalArg>args[i]).variant_type
            signal_args.push_back(signal_arg)
        self.dict = Dictionary.new0()
        py_bytes = name.encode("utf-8")
        cdef char* signal_c_name = py_bytes
        init_signal_description(signal_c_name, signal_args, self.dict.Dictionary_internal_class_ptr);

    def get_var_signal_dict(self):
        return self.var_signal_dict

    cdef Dictionary get_signal_dict(self):
        return self.dict