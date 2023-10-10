from py4godot.classes.Object.Object cimport *

cdef api void set_owner(object o, void* owner):
    (<Object>o).set_gdowner(owner)