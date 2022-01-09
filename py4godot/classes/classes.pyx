cimport py4godot.classes.generated as c_generated
import py4godot.classes.generated as py_generated
from py4godot.godot_bindings.binding cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.godot_bindings.types cimport *

cdef api set_native_script_classes(godot_gdnative_ext_nativescript_1_1_api_struct* api):
    c_generated.set_native_script(api)

cdef api init_method_bindings(godot_gdnative_core_api_struct* core):
    c_generated.set_core(core)
    py_generated.init_method_bindings()

cdef api set_bindings_funcs(godot_instance_binding_functions bindings_funcs_, int lang_ind):
    c_generated.set_bindings_funcs(bindings_funcs_, lang_ind)

cdef api register_types():
    c_generated.register_types()