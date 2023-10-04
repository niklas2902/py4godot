from py4godot.pluginscript_api.utils.utils cimport *
from py4godot.pluginscript_api.utils.SignalArg cimport *
from libcpp.vector cimport vector
cdef GDExtensionInterface* main_interface

cdef void set_interface_ptr(GDExtensionInterface* _interface):
    main_interface = _interface

cdef class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name, args):
        print_error("init SignalDescription")
        cdef int index = 0
        cdef str arg_name


        print_error("before creating vector")
        cdef CPPSignalArg signal_arg
        cdef vector[CPPSignalArg]  signal_args
        for i in range(len(args)):
            signal_arg.name = (<SignalArg>args[i]).get_name()
            signal_args.push_back(signal_arg)
        self.dict.Dictionary_internal_class = init_signal_description("test", signal_args);

    def get_var_signal_dict(self):
        return self.var_signal_dict

    cdef Dictionary get_signal_dict(self):
        return self.dict