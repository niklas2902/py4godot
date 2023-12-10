from py4godot.pluginscript_api.utils.utils cimport *
from py4godot.pluginscript_api.utils.SignalArg cimport *
from libcpp.vector cimport vector

cdef class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name, args):
        print_error("init SignalDescription")
        cdef int index = 0


        print_error("before creating vector")
        cdef CPPSignalArg signal_arg
        cdef vector[CPPSignalArg]  signal_args
        cdef str arg_name
        cdef char* c_name
        cdef py_bytes
        for i in range(len(args)):
            arg_name = (<SignalArg>args[i]).name
            py_bytes = arg_name.encode("utf-8")
            c_name = py_bytes
            signal_arg.name = c_name
            signal_arg.type = <GDExtensionVariantType>(<SignalArg>args[i]).variant_type
            signal_args.push_back(signal_arg)
        self.dict.Dictionary_internal_class = init_signal_description(name.encode("utf-8"), signal_args);

    def get_var_signal_dict(self):
        return self.var_signal_dict

    cdef Dictionary get_signal_dict(self):
        return self.dict