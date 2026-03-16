# distutils: language=c++
from py4godot.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.utils.utils cimport *
from py4godot.pluginscript_api.utils.utils cimport *

from py4godot.wrappers.wrappers cimport extract_ptr_from_StringNameWrapper, extract_ptr_from_StringWrapper

cdef class PropertyDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name,type_, BaseHint hint, usage, default_value):
        self.name = name
        self.bname = self.name.encode("utf-8")
        self.cname = self.bname
        self.bhint_string = hint.get_string().encode("utf-8")
        self.chint_string = <char*>self.bhint_string
        self.gd_name = py_c_string_to_string_name(self.cname)
        self.gd_name.shouldBeDeleted=False
        self.class_name = py_string_to_string_name("")#TODO minimize
        self.class_name.shouldBeDeleted = False
        self.type_ = get_variant_type(type_)
        self.hint = hint.get_hint()
        self.usage = usage
        self.default_value = convert_val(default_value)

    def get_name(self):
        return self.name

    def get_default_value(self):
        return self.default_value

    cdef void to_c(self):
        self.property_description = init_property_description( self.type_,
                                extract_ptr_from_StringNameWrapper(self.gd_name._ptr).get()[0],
                                extract_ptr_from_StringNameWrapper(self.class_name._ptr).get()[0],
                                self.hint,
                                self.chint_string,
                                self.usage)


