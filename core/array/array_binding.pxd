from godot_api.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_array_new)(godot_array *r_dest);
        void (*godot_array_set)(godot_array *p_self, const godot_int p_idx, const godot_variant *p_value);
        godot_variant (*godot_array_get)(const godot_array *p_self, const godot_int p_idx);
        godot_variant *(*godot_array_operator_index)(godot_array *p_self, const godot_int p_idx);
        const godot_variant *(*godot_array_operator_index_const)(const godot_array *p_self, const godot_int p_idx);
        void (*godot_array_append)(godot_array *p_self, const godot_variant *p_value);
        void (*godot_array_clear)(godot_array *p_self);
        godot_int (*godot_array_count)(const godot_array *p_self, const godot_variant *p_value);
        godot_bool (*godot_array_empty)(const godot_array *p_self);
        void (*godot_array_erase)(godot_array *p_self, const godot_variant *p_value);
        godot_variant (*godot_array_front)(const godot_array *p_self);
        godot_variant (*godot_array_back)(const godot_array *p_self);
        godot_int (*godot_array_find)(const godot_array *p_self, const godot_variant *p_what, const godot_int p_from);
        godot_int (*godot_array_find_last)(const godot_array *p_self, const godot_variant *p_what);
        godot_bool (*godot_array_has)(const godot_array *p_self, const godot_variant *p_value);
        godot_int (*godot_array_hash)(const godot_array *p_self);
        void (*godot_array_insert)(godot_array *p_self, const godot_int p_pos, const godot_variant *p_value);
        void (*godot_array_invert)(godot_array *p_self);
        godot_variant (*godot_array_pop_back)(godot_array *p_self);
        godot_variant (*godot_array_pop_front)(godot_array *p_self);
        void (*godot_array_push_back)(godot_array *p_self, const godot_variant *p_value);
        void (*godot_array_push_front)(godot_array *p_self, const godot_variant *p_value);
        void (*godot_array_remove)(godot_array *p_self, const godot_int p_idx);
        void (*godot_array_resize)(godot_array *p_self, const godot_int p_size);
        godot_int (*godot_array_rfind)(const godot_array *p_self, const godot_variant *p_what, const godot_int p_from);
        godot_int (*godot_array_size)(const godot_array *p_self);
        void (*godot_array_sort)(godot_array *p_self);
        void (*godot_array_sort_custom)(godot_array *p_self, godot_object *p_obj, const godot_string *p_func);
        godot_int (*godot_array_bsearch)(godot_array *p_self, const godot_variant *p_value, const godot_bool p_before);
        godot_int (*godot_array_bsearch_custom)(godot_array *p_self, const godot_variant *p_value, godot_object *p_obj, const godot_string *p_func, const godot_bool p_before);
        void (*godot_array_destroy)(godot_array *p_self);

