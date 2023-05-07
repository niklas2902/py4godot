from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.SignalArg cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *
from py4godot.classes.typed_arrays cimport *
from py4godot.classes.Object.Object cimport *

cdef class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name, args):
        self.signal_dict = Dictionary.new0()
        self.signal_name = c_string_to_string(name.encode("utf-8"))
        self.signal_key = c_string_to_string("name")
        self.signal_key_variant = Variant(self.signal_key)
        self.signal_name_variant = Variant(self.signal_name)
        cdef Variant var_name = Variant.new_static(gdnative_interface.dictionary_operator_index(self.signal_dict.godot_owner, self.signal_key_variant.get_native_ptr()))
        var_name.init_type(self.signal_name)
        self.var_signal_dict = Variant(self.signal_dict)

        # add args
        self.arg_key = c_string_to_string("args")
        self.arg_key_variant = Variant(self.arg_key)
        cdef Variant var_args = Variant.new_static(gdnative_interface.dictionary_operator_index(self.signal_dict.godot_owner, self.arg_key_variant.get_native_ptr()))
        self.args_array = Array.new0()
        self.dictionary_name = c_string_to_string_name("")
        self.dictionary_var = Variant(None)
        gdnative_interface.array_set_typed(self.args_array.godot_owner, GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_DICTIONARY,  self.dictionary_name.godot_owner, self.dictionary_var.get_native_ptr());

        #create a signal arg
        self.args_dicts = []
        self.variant_args_dicts = []
        self.arg_name_key = c_string_to_string("name")
        self.arg_name_key_variant = Variant(self.arg_name_key)

        self.arg_type_key = c_string_to_string("type")
        self.arg_type_key_variant = Variant(self.arg_type_key)
        cdef SignalArg signal_arg
        cdef Variant var_args_dict
        for arg in args:
            signal_arg = arg
            var_args_dict = self.create_signal_arg(signal_arg.name, signal_arg.variant_type)
        self.args_array.push_back(var_args_dict)

        #add args dictionaries to args array
        var_args.init_type(self.args_array)

    cdef Variant create_signal_arg(self, String name, int variant_type):
        cdef Dictionary arg_dict = Dictionary.new0()
        self.args_dicts.append(arg_dict)

        cdef Variant var_name_arg = Variant.new_static(gdnative_interface.dictionary_operator_index(arg_dict.godot_owner, self.arg_name_key_variant.get_native_ptr()))
        var_name_arg.init_type(name)

        cdef Variant var_type_arg = Variant.new_static(gdnative_interface.dictionary_operator_index(arg_dict.godot_owner, self.arg_type_key_variant.get_native_ptr()))
        var_type_arg.init_type(variant_type)

        cdef Variant var_args_dict = Variant(arg_dict)
        self.variant_args_dicts.append(var_args_dict)
        return var_args_dict

    def get_var_signal_dict(self):
        return self.var_signal_dict