from godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_rect2_new_with_position_and_size)(godot_rect2 *r_dest, const godot_vector2 *p_pos, const godot_vector2 *p_size);
        void (*godot_rect2_new)(godot_rect2 *r_dest, const godot_real p_x, const godot_real p_y, const godot_real p_width, const godot_real p_height);
        godot_string (*godot_rect2_as_string)(const godot_rect2 *p_self);
        godot_real (*godot_rect2_get_area)(const godot_rect2 *p_self);
        godot_bool (*godot_rect2_intersects)(const godot_rect2 *p_self, const godot_rect2 *p_b);
        godot_bool (*godot_rect2_encloses)(const godot_rect2 *p_self, const godot_rect2 *p_b);
        godot_bool (*godot_rect2_has_no_area)(const godot_rect2 *p_self);
        godot_rect2 (*godot_rect2_clip)(const godot_rect2 *p_self, const godot_rect2 *p_b);
        godot_rect2 (*godot_rect2_merge)(const godot_rect2 *p_self, const godot_rect2 *p_b);
        godot_bool (*godot_rect2_has_point)(const godot_rect2 *p_self, const godot_vector2 *p_point);
        godot_rect2 (*godot_rect2_grow)(const godot_rect2 *p_self, const godot_real p_by);
        godot_rect2 (*godot_rect2_expand)(const godot_rect2 *p_self, const godot_vector2 *p_to);
        godot_bool (*godot_rect2_operator_equal)(const godot_rect2 *p_self, const godot_rect2 *p_b);
        godot_vector2 (*godot_rect2_get_position)(const godot_rect2 *p_self);
        godot_vector2 (*godot_rect2_get_size)(const godot_rect2 *p_self);
        void (*godot_rect2_set_position)(godot_rect2 *p_self, const godot_vector2 *p_pos);
        void (*godot_rect2_set_size)(godot_rect2 *p_self, const godot_vector2 *p_size);