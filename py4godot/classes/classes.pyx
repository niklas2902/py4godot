cimport py4godot.classes.generated as c_generated
import py4godot.classes.generated as py_generated
from py4godot.godot_bindings.binding cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.godot_bindings.types cimport *


cdef api init_method_bindings(godot_gdnative_core_api_struct* core):
    py_generated.init_method_bindings()

cdef api set_bindings_funcs(godot_instance_binding_functions bindings_funcs_, int lang_ind):
    c_generated.set_bindings_funcs(bindings_funcs_, lang_ind)

cdef api register_types():
    c_generated.register_types()