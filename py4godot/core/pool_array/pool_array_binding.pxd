from py4godot.godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    ctypedef struct godot_error:
        pass
    ctypedef struct godot_pool_array_write_access:
        uint8_t _dont_touch_that[1]

    ctypedef godot_pool_array_write_access godot_pool_byte_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_int_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_real_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_string_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_vector2_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_vector3_array_write_access
    ctypedef godot_pool_array_write_access godot_pool_color_array_write_access


    ctypedef struct godot_pool_array_read_access:
        uint8_t _dont_touch_that[1]

    ctypedef godot_pool_array_read_access godot_pool_byte_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_int_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_real_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_string_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_vector2_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_vector3_array_read_access;
    ctypedef godot_pool_array_read_access godot_pool_color_array_read_access;

    struct godot_gdnative_core_api_struct:
        void (*godot_pool_byte_array_new)(godot_pool_byte_array *r_dest);
        void (*godot_pool_byte_array_new_copy)(godot_pool_byte_array *r_dest, const godot_pool_byte_array *p_src);
        void (*godot_pool_byte_array_new_with_array)(godot_pool_byte_array *r_dest, const godot_array *p_a);
        void (*godot_pool_byte_array_append)(godot_pool_byte_array *p_self, const uint8_t p_data);
        void (*godot_pool_byte_array_append_array)(godot_pool_byte_array *p_self, const godot_pool_byte_array *p_array);
        godot_error (*godot_pool_byte_array_insert)(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);
        void (*godot_pool_byte_array_invert)(godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_push_back)(godot_pool_byte_array *p_self, const uint8_t p_data);
        void (*godot_pool_byte_array_remove)(godot_pool_byte_array *p_self, const godot_int p_idx);
        void (*godot_pool_byte_array_resize)(godot_pool_byte_array *p_self, const godot_int p_size);
        godot_pool_byte_array_read_access *(*godot_pool_byte_array_read)(const godot_pool_byte_array *p_self);
        godot_pool_byte_array_write_access *(*godot_pool_byte_array_write)(godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_set)(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);
        uint8_t (*godot_pool_byte_array_get)(const godot_pool_byte_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_byte_array_size)(const godot_pool_byte_array *p_self);
        void (*godot_pool_byte_array_destroy)(godot_pool_byte_array *p_self);

        void (*godot_pool_int_array_new)(godot_pool_int_array *r_dest);
        void (*godot_pool_int_array_new_copy)(godot_pool_int_array *r_dest, const godot_pool_int_array *p_src);
        void (*godot_pool_int_array_new_with_array)(godot_pool_int_array *r_dest, const godot_array *p_a);
        void (*godot_pool_int_array_append)(godot_pool_int_array *p_self, const godot_int p_data);
        void (*godot_pool_int_array_append_array)(godot_pool_int_array *p_self, const godot_pool_int_array *p_array);
        godot_error (*godot_pool_int_array_insert)(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);
        void (*godot_pool_int_array_invert)(godot_pool_int_array *p_self);
        void (*godot_pool_int_array_push_back)(godot_pool_int_array *p_self, const godot_int p_data);
        void (*godot_pool_int_array_remove)(godot_pool_int_array *p_self, const godot_int p_idx);
        void (*godot_pool_int_array_resize)(godot_pool_int_array *p_self, const godot_int p_size);
        godot_pool_int_array_read_access *(*godot_pool_int_array_read)(const godot_pool_int_array *p_self);
        godot_pool_int_array_write_access *(*godot_pool_int_array_write)(godot_pool_int_array *p_self);
        void (*godot_pool_int_array_set)(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);
        godot_int (*godot_pool_int_array_get)(const godot_pool_int_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_int_array_size)(const godot_pool_int_array *p_self);
        void (*godot_pool_int_array_destroy)(godot_pool_int_array *p_self);

        void (*godot_pool_real_array_new)(godot_pool_real_array *r_dest);
        void (*godot_pool_real_array_new_copy)(godot_pool_real_array *r_dest, const godot_pool_real_array *p_src);
        void (*godot_pool_real_array_new_with_array)(godot_pool_real_array *r_dest, const godot_array *p_a);
        void (*godot_pool_real_array_append)(godot_pool_real_array *p_self, const godot_real p_data);
        void (*godot_pool_real_array_append_array)(godot_pool_real_array *p_self, const godot_pool_real_array *p_array);
        godot_error (*godot_pool_real_array_insert)(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);
        void (*godot_pool_real_array_invert)(godot_pool_real_array *p_self);
        void (*godot_pool_real_array_push_back)(godot_pool_real_array *p_self, const godot_real p_data);
        void (*godot_pool_real_array_remove)(godot_pool_real_array *p_self, const godot_int p_idx);
        void (*godot_pool_real_array_resize)(godot_pool_real_array *p_self, const godot_int p_size);
        godot_pool_real_array_read_access *(*godot_pool_real_array_read)(const godot_pool_real_array *p_self);
        godot_pool_real_array_write_access *(*godot_pool_real_array_write)(godot_pool_real_array *p_self);
        void (*godot_pool_real_array_set)(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);
        godot_real (*godot_pool_real_array_get)(const godot_pool_real_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_real_array_size)(const godot_pool_real_array *p_self);
        void (*godot_pool_real_array_destroy)(godot_pool_real_array *p_self);

        void (*godot_pool_string_array_new)(godot_pool_string_array *r_dest);
        void (*godot_pool_string_array_new_copy)(godot_pool_string_array *r_dest, const godot_pool_string_array *p_src);
        void (*godot_pool_string_array_new_with_array)(godot_pool_string_array *r_dest, const godot_array *p_a);
        void (*godot_pool_string_array_append)(godot_pool_string_array *p_self, const godot_string *p_data);
        void (*godot_pool_string_array_append_array)(godot_pool_string_array *p_self, const godot_pool_string_array *p_array);
        godot_error (*godot_pool_string_array_insert)(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);
        void (*godot_pool_string_array_invert)(godot_pool_string_array *p_self);
        void (*godot_pool_string_array_push_back)(godot_pool_string_array *p_self, const godot_string *p_data);
        void (*godot_pool_string_array_remove)(godot_pool_string_array *p_self, const godot_int p_idx);
        void (*godot_pool_string_array_resize)(godot_pool_string_array *p_self, const godot_int p_size);
        godot_pool_string_array_read_access *(*godot_pool_string_array_read)(const godot_pool_string_array *p_self);
        godot_pool_string_array_write_access *(*godot_pool_string_array_write)(godot_pool_string_array *p_self);
        void (*godot_pool_string_array_set)(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);
        godot_string (*godot_pool_string_array_get)(const godot_pool_string_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_string_array_size)(const godot_pool_string_array *p_self);
        void (*godot_pool_string_array_destroy)(godot_pool_string_array *p_self);

        void (*godot_pool_vector2_array_new)(godot_pool_vector2_array *r_dest);
        void (*godot_pool_vector2_array_new_copy)(godot_pool_vector2_array *r_dest, const godot_pool_vector2_array *p_src);
        void (*godot_pool_vector2_array_new_with_array)(godot_pool_vector2_array *r_dest, const godot_array *p_a);
        void (*godot_pool_vector2_array_append)(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);
        void (*godot_pool_vector2_array_append_array)(godot_pool_vector2_array *p_self, const godot_pool_vector2_array *p_array);
        godot_error (*godot_pool_vector2_array_insert)(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);
        void (*godot_pool_vector2_array_invert)(godot_pool_vector2_array *p_self);
        void (*godot_pool_vector2_array_push_back)(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);
        void (*godot_pool_vector2_array_remove)(godot_pool_vector2_array *p_self, const godot_int p_idx);
        void (*godot_pool_vector2_array_resize)(godot_pool_vector2_array *p_self, const godot_int p_size);
        godot_pool_vector2_array_read_access *(*godot_pool_vector2_array_read)(const godot_pool_vector2_array *p_self);
        godot_pool_vector2_array_write_access *(*godot_pool_vector2_array_write)(godot_pool_vector2_array *p_self);
        void (*godot_pool_vector2_array_set)(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);
        godot_vector2 (*godot_pool_vector2_array_get)(const godot_pool_vector2_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_vector2_array_size)(const godot_pool_vector2_array *p_self);
        void (*godot_pool_vector2_array_destroy)(godot_pool_vector2_array *p_self);

        void (*godot_pool_vector3_array_new)(godot_pool_vector3_array *r_dest);
        void (*godot_pool_vector3_array_new_copy)(godot_pool_vector3_array *r_dest, const godot_pool_vector3_array *p_src);
        void (*godot_pool_vector3_array_new_with_array)(godot_pool_vector3_array *r_dest, const godot_array *p_a);
        void (*godot_pool_vector3_array_append)(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);
        void (*godot_pool_vector3_array_append_array)(godot_pool_vector3_array *p_self, const godot_pool_vector3_array *p_array);
        godot_error (*godot_pool_vector3_array_insert)(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);
        void (*godot_pool_vector3_array_invert)(godot_pool_vector3_array *p_self);
        void (*godot_pool_vector3_array_push_back)(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);
        void (*godot_pool_vector3_array_remove)(godot_pool_vector3_array *p_self, const godot_int p_idx);
        void (*godot_pool_vector3_array_resize)(godot_pool_vector3_array *p_self, const godot_int p_size);
        godot_pool_vector3_array_read_access *(*godot_pool_vector3_array_read)(const godot_pool_vector3_array *p_self);
        godot_pool_vector3_array_write_access *(*godot_pool_vector3_array_write)(godot_pool_vector3_array *p_self);
        void (*godot_pool_vector3_array_set)(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);
        godot_vector3 (*godot_pool_vector3_array_get)(const godot_pool_vector3_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_vector3_array_size)(const godot_pool_vector3_array *p_self);
        void (*godot_pool_vector3_array_destroy)(godot_pool_vector3_array *p_self);

        void (*godot_pool_color_array_new)(godot_pool_color_array *r_dest);
        void (*godot_pool_color_array_new_copy)(godot_pool_color_array *r_dest, const godot_pool_color_array *p_src);
        void (*godot_pool_color_array_new_with_array)(godot_pool_color_array *r_dest, const godot_array *p_a);
        void (*godot_pool_color_array_append)(godot_pool_color_array *p_self, const godot_color *p_data);
        void (*godot_pool_color_array_append_array)(godot_pool_color_array *p_self, const godot_pool_color_array *p_array);
        godot_error (*godot_pool_color_array_insert)(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);
        void (*godot_pool_color_array_invert)(godot_pool_color_array *p_self);
        void (*godot_pool_color_array_push_back)(godot_pool_color_array *p_self, const godot_color *p_data);
        void (*godot_pool_color_array_remove)(godot_pool_color_array *p_self, const godot_int p_idx);
        void (*godot_pool_color_array_resize)(godot_pool_color_array *p_self, const godot_int p_size);
        godot_pool_color_array_read_access *(*godot_pool_color_array_read)(const godot_pool_color_array *p_self);
        godot_pool_color_array_write_access *(*godot_pool_color_array_write)(godot_pool_color_array *p_self);
        void (*godot_pool_color_array_set)(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);
        godot_color (*godot_pool_color_array_get)(const godot_pool_color_array *p_self, const godot_int p_idx);
        godot_int (*godot_pool_color_array_size)(const godot_pool_color_array *p_self);
        void (*godot_pool_color_array_destroy)(godot_pool_color_array *p_self);

        godot_pool_byte_array_read_access *(*godot_pool_byte_array_read_access_copy)(const godot_pool_byte_array_read_access *p_read);
        const uint8_t *(*godot_pool_byte_array_read_access_ptr)(const godot_pool_byte_array_read_access *p_read);
        void (*godot_pool_byte_array_read_access_operator_assign)(godot_pool_byte_array_read_access *p_read, godot_pool_byte_array_read_access *p_other);
        void (*godot_pool_byte_array_read_access_destroy)(godot_pool_byte_array_read_access *p_read);
        godot_pool_int_array_read_access *(*godot_pool_int_array_read_access_copy)(const godot_pool_int_array_read_access *p_read);
        const godot_int *(*godot_pool_int_array_read_access_ptr)(const godot_pool_int_array_read_access *p_read);
        void (*godot_pool_int_array_read_access_operator_assign)(godot_pool_int_array_read_access *p_read, godot_pool_int_array_read_access *p_other);
        void (*godot_pool_int_array_read_access_destroy)(godot_pool_int_array_read_access *p_read);
        godot_pool_real_array_read_access *(*godot_pool_real_array_read_access_copy)(const godot_pool_real_array_read_access *p_read);
        const godot_real *(*godot_pool_real_array_read_access_ptr)(const godot_pool_real_array_read_access *p_read);
        void (*godot_pool_real_array_read_access_operator_assign)(godot_pool_real_array_read_access *p_read, godot_pool_real_array_read_access *p_other);
        void (*godot_pool_real_array_read_access_destroy)(godot_pool_real_array_read_access *p_read);
        godot_pool_string_array_read_access *(*godot_pool_string_array_read_access_copy)(const godot_pool_string_array_read_access *p_read);
        const godot_string *(*godot_pool_string_array_read_access_ptr)(const godot_pool_string_array_read_access *p_read);
        void (*godot_pool_string_array_read_access_operator_assign)(godot_pool_string_array_read_access *p_read, godot_pool_string_array_read_access *p_other);
        void (*godot_pool_string_array_read_access_destroy)(godot_pool_string_array_read_access *p_read);
        godot_pool_vector2_array_read_access *(*godot_pool_vector2_array_read_access_copy)(const godot_pool_vector2_array_read_access *p_read);
        const godot_vector2 *(*godot_pool_vector2_array_read_access_ptr)(const godot_pool_vector2_array_read_access *p_read);
        void (*godot_pool_vector2_array_read_access_operator_assign)(godot_pool_vector2_array_read_access *p_read, godot_pool_vector2_array_read_access *p_other);
        void (*godot_pool_vector2_array_read_access_destroy)(godot_pool_vector2_array_read_access *p_read);
        godot_pool_vector3_array_read_access *(*godot_pool_vector3_array_read_access_copy)(const godot_pool_vector3_array_read_access *p_read);
        const godot_vector3 *(*godot_pool_vector3_array_read_access_ptr)(const godot_pool_vector3_array_read_access *p_read);
        void (*godot_pool_vector3_array_read_access_operator_assign)(godot_pool_vector3_array_read_access *p_read, godot_pool_vector3_array_read_access *p_other);
        void (*godot_pool_vector3_array_read_access_destroy)(godot_pool_vector3_array_read_access *p_read);
        godot_pool_color_array_read_access *(*godot_pool_color_array_read_access_copy)(const godot_pool_color_array_read_access *p_read);
        const godot_color *(*godot_pool_color_array_read_access_ptr)(const godot_pool_color_array_read_access *p_read);
        void (*godot_pool_color_array_read_access_operator_assign)(godot_pool_color_array_read_access *p_read, godot_pool_color_array_read_access *p_other);
        void (*godot_pool_color_array_read_access_destroy)(godot_pool_color_array_read_access *p_read);
        godot_pool_byte_array_write_access *(*godot_pool_byte_array_write_access_copy)(const godot_pool_byte_array_write_access *p_write);
        uint8_t *(*godot_pool_byte_array_write_access_ptr)(const godot_pool_byte_array_write_access *p_write);
        void (*godot_pool_byte_array_write_access_operator_assign)(godot_pool_byte_array_write_access *p_write, godot_pool_byte_array_write_access *p_other);
        void (*godot_pool_byte_array_write_access_destroy)(godot_pool_byte_array_write_access *p_write);
        godot_pool_int_array_write_access *(*godot_pool_int_array_write_access_copy)(const godot_pool_int_array_write_access *p_write);
        godot_int *(*godot_pool_int_array_write_access_ptr)(const godot_pool_int_array_write_access *p_write);
        void (*godot_pool_int_array_write_access_operator_assign)(godot_pool_int_array_write_access *p_write, godot_pool_int_array_write_access *p_other);
        void (*godot_pool_int_array_write_access_destroy)(godot_pool_int_array_write_access *p_write);
        godot_pool_real_array_write_access *(*godot_pool_real_array_write_access_copy)(const godot_pool_real_array_write_access *p_write);
        godot_real *(*godot_pool_real_array_write_access_ptr)(const godot_pool_real_array_write_access *p_write);
        void (*godot_pool_real_array_write_access_operator_assign)(godot_pool_real_array_write_access *p_write, godot_pool_real_array_write_access *p_other);
        void (*godot_pool_real_array_write_access_destroy)(godot_pool_real_array_write_access *p_write);
        godot_pool_string_array_write_access *(*godot_pool_string_array_write_access_copy)(const godot_pool_string_array_write_access *p_write);
        godot_string *(*godot_pool_string_array_write_access_ptr)(const godot_pool_string_array_write_access *p_write);
        void (*godot_pool_string_array_write_access_operator_assign)(godot_pool_string_array_write_access *p_write, godot_pool_string_array_write_access *p_other);
        void (*godot_pool_string_array_write_access_destroy)(godot_pool_string_array_write_access *p_write);
        godot_pool_vector2_array_write_access *(*godot_pool_vector2_array_write_access_copy)(const godot_pool_vector2_array_write_access *p_write);
        godot_vector2 *(*godot_pool_vector2_array_write_access_ptr)(const godot_pool_vector2_array_write_access *p_write);
        void (*godot_pool_vector2_array_write_access_operator_assign)(godot_pool_vector2_array_write_access *p_write, godot_pool_vector2_array_write_access *p_other);
        void (*godot_pool_vector2_array_write_access_destroy)(godot_pool_vector2_array_write_access *p_write);
        godot_pool_vector3_array_write_access *(*godot_pool_vector3_array_write_access_copy)(const godot_pool_vector3_array_write_access *p_write);
        godot_vector3 *(*godot_pool_vector3_array_write_access_ptr)(const godot_pool_vector3_array_write_access *p_write);
        void (*godot_pool_vector3_array_write_access_operator_assign)(godot_pool_vector3_array_write_access *p_write, godot_pool_vector3_array_write_access *p_other);
        void (*godot_pool_vector3_array_write_access_destroy)(godot_pool_vector3_array_write_access *p_write);
        godot_pool_color_array_write_access *(*godot_pool_color_array_write_access_copy)(const godot_pool_color_array_write_access *p_write);
        godot_color *(*godot_pool_color_array_write_access_ptr)(const godot_pool_color_array_write_access *p_write);
        void (*godot_pool_color_array_write_access_operator_assign)(godot_pool_color_array_write_access *p_write, godot_pool_color_array_write_access *p_other);
        void (*godot_pool_color_array_write_access_destroy)(godot_pool_color_array_write_access *p_write);
        void (*godot_array_new)(godot_array *r_dest);
        void (*godot_array_new_copy)(godot_array *r_dest, const godot_array *p_src);
        void (*godot_array_new_pool_color_array)(godot_array *r_dest, const godot_pool_color_array *p_pca);
        void (*godot_array_new_pool_vector3_array)(godot_array *r_dest, const godot_pool_vector3_array *p_pv3a);
        void (*godot_array_new_pool_vector2_array)(godot_array *r_dest, const godot_pool_vector2_array *p_pv2a);
        void (*godot_array_new_pool_string_array)(godot_array *r_dest, const godot_pool_string_array *p_psa);
        void (*godot_array_new_pool_real_array)(godot_array *r_dest, const godot_pool_real_array *p_pra);
        void (*godot_array_new_pool_int_array)(godot_array *r_dest, const godot_pool_int_array *p_pia);
        void (*godot_array_new_pool_byte_array)(godot_array *r_dest, const godot_pool_byte_array *p_pba);