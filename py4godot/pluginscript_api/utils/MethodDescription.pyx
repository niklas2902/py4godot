from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.pluginscript_api.utils.helpers cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
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
            tools.print_error("constructor Method Description")
            inc_id_counter()
            tools.print_error("after inc_id_counter")
            self.name = py_c_string_to_string_name(name.encode("utf-8"))
            if return_value != None:
                self.return_value = return_value
            else:
                self.return_value = PropertyDescription( name = "return",
                type_ = None, hint = BaseHint(), usage = 0, default_value = None)
                tools.print_error("else_return_val")
            tools.print_error(f"return-value:{self.return_value}")
            self.flags = flags
            self.id = id_counter
            tools.print_error("before default_args")
            for arg in arguments:
                property_description = <PropertyDescription> arg
                self.args.push_back(property_description.property_info)
            self.to_c()
        except Exception as e:
            tools.print_error(f"Exception:{e}")
        tools.print_error("after to_c")

    cdef void to_c(self):
        init_method_description(self.name.StringName_internal_class_ptr.get()[0], self.args, self.method_info)