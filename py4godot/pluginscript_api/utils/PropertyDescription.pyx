from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *

cdef class PropertyDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name,type_, BaseHint hint, usage, default_value):
        self.name = StringName.new2(c_string_to_string(name.encode("utf-8")))
        self.type_ = get_variant_type(type_)
        self.hint = hint.get_hint()
        self.hint_string = c_string_to_string(hint.get_string().encode("utf-8"))
        self.usage = usage
        self.default_value = convert_val(default_value)
        self.class_ = c_string_to_string("int")
        self.class_name = StringName.new0()
        self.to_c()

    def get_name(self):
        return self.name

    def get_default_value(self):
        return self.default_value
    cdef void to_c(self):
        self.property_info.type = self.type_
        self.property_info.name = self.name.godot_owner
        self.property_info.class_name = self.class_name.godot_owner
        self.property_info.hint = self.hint
        self.property_info.hint_string = self.hint_string.godot_owner
        self.property_info.usage = self.usage


