from py4godot.classes.Object.Object cimport *
from py4godot.utils.print_tools import *

cdef api void set_owner(object o, void* owner):
    try:
        (<Object>o).set_gdowner(owner)
    except Exception as e:
        print_error("Excception:", e)