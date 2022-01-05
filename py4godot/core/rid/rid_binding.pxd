from py4godot.godot_bindings.binding cimport *

cdef extern from "binding.h":

    const godot_gdnative_core_api_struct *api_core
    struct godot_gdnative_core_api_struct:
        void (*godot_rid_new)(godot_rid *r_dest);
        godot_int (*godot_rid_get_id)(const godot_rid *p_self);
        void (*godot_rid_new_with_resource)(godot_rid *r_dest, const godot_object *p_from);
        godot_bool (*godot_rid_operator_equal)(const godot_rid *p_self, const godot_rid *p_b);
        godot_bool (*godot_rid_operator_less)(const godot_rid *p_self, const godot_rid *p_b);