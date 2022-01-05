from py4godot.godot_bindings.binding cimport *
cdef class Wrapper(object):
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    cdef godot_object *godot_owner

    cdef inline void set_godot_owner(self,godot_object* owner):
        print("set_godot_owner")
        self.godot_owner = owner

    cdef inline godot_object* get_godot_owner(self):
        return self.godot_owner


