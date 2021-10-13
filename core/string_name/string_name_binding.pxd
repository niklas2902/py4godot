from godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_string_name_new)(godot_string_name *r_dest, const godot_string *p_name);
        void (*godot_string_name_new_data)(godot_string_name *r_dest, const char *p_name);
        godot_string (*godot_string_name_get_name)(const godot_string_name *p_self);
        uint32_t (*godot_string_name_get_hash)(const godot_string_name *p_self);
        const void *(*godot_string_name_get_data_unique_pointer)(const godot_string_name *p_self);
        godot_bool (*godot_string_name_operator_equal)(const godot_string_name *p_self, const godot_string_name *p_other);
        godot_bool (*godot_string_name_operator_less)(const godot_string_name *p_self, const godot_string_name *p_other);
        void (*godot_string_name_destroy)(godot_string_name *p_self);

        #helping method from string
        const wchar_t *(*godot_string_wide_str)(const godot_string *p_self);