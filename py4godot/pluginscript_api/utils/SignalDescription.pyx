from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *



cdef class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name):
        self.signal_dict = Dictionary.new0()
        self.signal_name = c_string_to_string(name.encode("utf-8"))
        self.signal_key = c_string_to_string("name")
        self.signal_key_variant = Variant(self.signal_key)
        self.signal_name_variant = Variant(self.signal_name)
        cdef Variant var_name = Variant.new_static(gdnative_interface.dictionary_operator_index(self.signal_dict.godot_owner, self.signal_key_variant.get_native_ptr()))
        var_name.init_type(self.signal_name)
        self.var_signal_dict = Variant(self.signal_dict)

    def get_var_signal_dict(self):
        return self.var_signal_dict