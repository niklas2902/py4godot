from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *
from py4godot.core.Variant4.Variant4 cimport *
from libc.stdlib cimport malloc, free

id_counter = 0
cdef inc_id_counter():
    global id_counter
    id_counter += 1

cdef class MethodDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name, return_value, flags,  arguments, default_arguments):
        inc_id_counter()
        self.name = StringName.new2(c_string_to_string(name.encode("utf-8")))
        self.return_value = return_value
        self.flags = flags
        self.id = id_counter

        self.argument_count = len(arguments)
        self.arguments = arguments

        self.default_arugment_count = len(default_arguments)
        self.default_arguments = default_arguments
        self.to_c()

    cdef void to_c(self):
        self.method_info.name = name.godot_owner
        if(return_value):
            self.method_info.return_value = self.return_value.property_info
        self.method_info.flags = flags

        cdef GDExtensionPropertyInfo* c_list_arguments
        if self.argument_count > 0:
            c_list_arguments = <GDExtensionPropertyInfo*>malloc(sizeof(GDExtensionPropertyInfo)*self.argument_count)
            for i in range(self.argument_count):
                c_list_arguments[i] = <GDExtensionPropertyInfo>((<PropertyDescription>self.arguments[i]).property_info)
            self.method_info.arguments = c_list_arguments

        cdef GDExtensionVariantPtr* c_list_default_arguments
        cdef Variant var
        if self.default_argument_count > 0:

            c_list_default_arguments = <GDExtensionVariantPtr*>malloc(sizeof(GDExtensionVariantPtr)*self.default_argument_count)
            for i in range(self.default_argument_count):
                var = (<Variant>self.default_arguments[i])
                c_list_default_arguments[i] = var.get_native_ptr()
            self.method_info.default_arguments = c_list_default_arguments