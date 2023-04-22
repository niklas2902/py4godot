from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *

cdef GDExtensionPropertyInfo property
cdef StringName name = StringName.new2(c_string_to_string("test"))
cdef StringName class_ = StringName.new2(c_string_to_string("int"))
cdef String hint = c_string_to_string("test")
property.type = GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT
property.name = name.godot_owner
property.class_name = class_.godot_owner
property.hint = 0
property.hint_string = hint.godot_owner
property.usage = 6


cdef dict types_dict = {int:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT, str:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING}

cdef object convert_val(object val):
    if(type(val) == str):
        return c_string_to_string(val.encode("utf-8"))
    return val

cdef GDExtensionVariantType get_variant_type(object type_):
    if(type_ in types_dict.keys()):
        return types_dict[type_]
    print_error("couldn't find type", type_)
    return GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT

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
        #cdef StringName name = StringName.new2(c_string_to_string(self.name.encode("utf-8")))
        #cdef StringName class_ = StringName.new2(c_string_to_string("int"))
        #cdef String hint = c_string_to_string(self.hint_string.encode('utf-8'))


        self.property_info.type = self.type_
        self.property_info.name = self.name.godot_owner
        self.property_info.class_name = self.class_name.godot_owner
        self.property_info.hint = self.hint
        self.property_info.hint_string = self.hint_string.godot_owner
        self.property_info.usage = self.usage


        #cdef StringName name = StringName.new2(c_string_to_string("test"))
        #cdef StringName class_ = StringName.new2(c_string_to_string("int"))
        #cdef String hint = c_string_to_string("test")
        #self.property_info.type = GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT
        #self.property_info.name = name.godot_owner
        #self.property_info.class_name = class_.godot_owner
        #self.property_info.hint = 0
        #self.property_info.hint_string = hint.godot_owner
        #self.property_info.usage = 6


