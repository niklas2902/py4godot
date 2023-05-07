from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.pluginscript_api.utils.helpers cimport *

cdef class SignalArg:
    def __init__(self, name, type_):
        self.name = c_string_to_string(name.encode("utf-8"))
        self.variant_type = get_variant_type(type_)