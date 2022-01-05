from py4godot.godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_dictionary_new)(godot_dictionary *r_dest);
        void (*godot_dictionary_new_copy)(godot_dictionary *r_dest, const godot_dictionary *p_src);
        void (*godot_dictionary_destroy)(godot_dictionary *p_self);
        godot_int (*godot_dictionary_size)(const godot_dictionary *p_self);
        godot_bool (*godot_dictionary_empty)(const godot_dictionary *p_self);
        void (*godot_dictionary_clear)(godot_dictionary *p_self);
        godot_bool (*godot_dictionary_has)(const godot_dictionary *p_self, const godot_variant *p_key);
        godot_bool (*godot_dictionary_has_all)(const godot_dictionary *p_self, const godot_array *p_keys);
        void (*godot_dictionary_erase)(godot_dictionary *p_self, const godot_variant *p_key);
        godot_int (*godot_dictionary_hash)(const godot_dictionary *p_self);
        godot_array (*godot_dictionary_keys)(const godot_dictionary *p_self);
        godot_array (*godot_dictionary_values)(const godot_dictionary *p_self);
        godot_variant (*godot_dictionary_get)(const godot_dictionary *p_self, const godot_variant *p_key);
        void (*godot_dictionary_set)(godot_dictionary *p_self, const godot_variant *p_key, const godot_variant *p_value);
        godot_variant *(*godot_dictionary_operator_index)(godot_dictionary *p_self, const godot_variant *p_key);
        const godot_variant *(*godot_dictionary_operator_index_const)(const godot_dictionary *p_self, const godot_variant *p_key);
        godot_variant *(*godot_dictionary_next)(const godot_dictionary *p_self, const godot_variant *p_key);
        godot_bool (*godot_dictionary_operator_equal)(const godot_dictionary *p_self, const godot_dictionary *p_b);
        godot_string (*godot_dictionary_to_json)(const godot_dictionary *p_self);

        void (*godot_print)(const godot_string *p_message);
        godot_string (*godot_string_num)(double p_num);