from godot_api.binding cimport *
cdef class Wrapper:
    cdef godot_object *godot_owner

    cdef inline void set_godot_owner(self,godot_object* owner):
        self.godot_owner = owner

    cdef inline godot_object* get_godot_owner(self):
        return self.godot_owner


