cimport classes.generated as c_generated
import classes.generated
from godot_api.binding_external cimport *

cdef api init_method_bindings(godot_gdnative_core_api_struct* core):
    print("\n\n#####################init_method_bindings###############################\n\n")
    c_generated.set_core(core)
    classes.generated.init_method_bindings()
    print("\n\n#####################end init_method_bindings###############################\n\n")