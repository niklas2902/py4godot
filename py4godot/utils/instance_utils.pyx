from py4godot.classes.Object.Object cimport *
from py4godot.utils.print_tools import *

cdef api void set_owner(object o, void* owner):
    try:
        (<Object>o).set_gdowner(owner)
    except Exception as e:
        print_error("Excception:", e)

cdef api void set_default_val(object o, str attribute_name, object val):
    print_error("set_default_val:",attribute_name, val,  o)
    try:
        setattr(o, attribute_name, val)
    except Exception as e:
        print_error("Exception when setting attribute:", e)