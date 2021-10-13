from godot_bindings.binding cimport *
cdef class Wrapper(object):
    cdef godot_object *godot_owner

    cdef inline void set_godot_owner(self,godot_object* owner):
        print("set_godot_owner")
        self.godot_owner = owner

    cdef inline godot_object* get_godot_owner(self):
        return self.godot_owner


