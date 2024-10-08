# distutils: language=c++
from py4godot.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.core cimport *
from py4godot.classes.Object cimport *
from py4godot.utils.utils cimport *
import py4godot.utils.print_tools as tools
from py4godot.core.variant4.Variant4 cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
from libc.stdlib cimport malloc, free


id_counter = 0
cdef inc_id_counter():
    global id_counter
    id_counter += 1

cdef class MethodDescription:
    #Description class for the properties, a gdclass can have and which can be found in the editor
    def __init__(self, name, return_value, flags,  arguments, default_arguments):
        cdef vector[GDExtensionPropertyInfo] properties
        cdef PropertyDescription property_description
        try:
            inc_id_counter()
            self.name = py_c_string_to_string_name(name.encode("utf-8"))
            if return_value != None:
                self.return_value = return_value
            else:
                self.return_value = PropertyDescription( name = "return",
                type_ = None, hint = BaseHint(), usage = 0, default_value = None)
            self.flags = flags
            self.id = id_counter
            for arg in arguments:
                property_description = <PropertyDescription> arg
                self.args.push_back(property_description.property_info)
            self.to_c()
        except Exception as e:
            tools.print_error(f"Exception:{e}")

    cdef void to_c(self):
        init_method_description(self.name.StringName_internal_class_ptr.get()[0], self.args, self.method_info)