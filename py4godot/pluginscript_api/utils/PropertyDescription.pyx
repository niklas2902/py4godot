# distutils: language=c++
from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.pluginscript_api.utils.utils cimport *
from py4godot.classes.core cimport *
cimport py4godot.classes.cpp_bridge as bridge

cdef class PropertyDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name,type_, BaseHint hint, usage, default_value):
        self.name = name
        self.bname = self.name.encode("utf-8")
        self.cname = self.bname
        self.gd_name = py_c_string_to_string_name(self.cname)

        self.type_ = get_variant_type(type_)
        self.hint = hint.get_hint()
        self.hint_string = py_c_string_to_string(hint.get_string().encode("utf-8"))
        self.usage = usage
        self.default_value = convert_val(default_value)
        #self.class_name = StringName.new2(str(type_))
        #self.to_c()

    def get_name(self):
        return self.name

    def get_default_value(self):
        return self.default_value

    cdef void to_c(self):
        """
        self.property_info.type = self.type_
        self.property_info.name = self.name.CPPStringName.godot_owner
        self.property_info.class_name = self.class_name.CPPStringName.godot_owner
        self.property_info.hint = self.hint
        self.property_info.hint_string = self.hint_string.CPPStringName.godot_owner
        self.property_info.usage = self.usage
        """
        init_property_description( self.property_info,
                                self.type_,
                                self.gd_name.StringName_internal_class_ptr.get()[0],
                                self.class_name.StringName_internal_class_ptr.get()[0],
                                self.hint,
                                self.hint_string.String_internal_class_ptr.get()[0],
                                self.usage)


