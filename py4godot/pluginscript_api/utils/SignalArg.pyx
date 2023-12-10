from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *
from py4godot.pluginscript_api.utils.helpers cimport *

cdef class SignalArg:
    def __init__(self, name, type_):
        print_error("SignalArg __init__")
        self.name = name
        self.variant_type = get_variant_type(type_)

    cdef char* get_name(self):
        return self.name.encode("utf-8")
