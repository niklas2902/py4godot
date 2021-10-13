from godot_bindings.binding cimport *

cdef extern from "binding.h":

    ctypedef enum godot_variant_type:
        GODOT_VARIANT_TYPE_NIL

        # atomic types
        GODOT_VARIANT_TYPE_BOOL
        GODOT_VARIANT_TYPE_INT
        GODOT_VARIANT_TYPE_REAL
        GODOT_VARIANT_TYPE_STRING

        # math types

        GODOT_VARIANT_TYPE_VECTOR2 # 5
        GODOT_VARIANT_TYPE_RECT2
        GODOT_VARIANT_TYPE_VECTOR3
        GODOT_VARIANT_TYPE_TRANSFORM2D
        GODOT_VARIANT_TYPE_PLANE
        GODOT_VARIANT_TYPE_QUAT # 10
        GODOT_VARIANT_TYPE_AABB
        GODOT_VARIANT_TYPE_BASIS
        GODOT_VARIANT_TYPE_TRANSFORM

        # misc types
        GODOT_VARIANT_TYPE_COLOR
        GODOT_VARIANT_TYPE_NODE_PATH # 15
        GODOT_VARIANT_TYPE_RID
        GODOT_VARIANT_TYPE_OBJECT
        GODOT_VARIANT_TYPE_DICTIONARY
        GODOT_VARIANT_TYPE_ARRAY # 20

        GODOT_VARIANT_TYPE_POOL_BYTE_ARRAY
        GODOT_VARIANT_TYPE_POOL_INT_ARRAY
        GODOT_VARIANT_TYPE_POOL_REAL_ARRAY
        GODOT_VARIANT_TYPE_POOL_STRING_ARRAY
        GODOT_VARIANT_TYPE_POOL_VECTOR2_ARRAY # 25
        GODOT_VARIANT_TYPE_POOL_VECTOR3_ARRAY
        GODOT_VARIANT_TYPE_POOL_COLOR_ARRAY

    ctypedef struct godot_variant_call_error:
        pass

    const godot_gdnative_core_api_struct *api_core
    struct godot_gdnative_core_api_struct:
        godot_variant_type (*godot_variant_get_type)(const godot_variant *p_v);
        void (*godot_variant_new_copy)(godot_variant *r_dest, const godot_variant *p_src);
        void (*godot_variant_new_nil)(godot_variant *r_dest);
        void (*godot_variant_new_bool)(godot_variant *r_dest, const godot_bool p_b);
        void (*godot_variant_new_uint)(godot_variant *r_dest, const uint64_t p_i);
        void (*godot_variant_new_int)(godot_variant *r_dest, const int64_t p_i);
        void (*godot_variant_new_real)(godot_variant *r_dest, const double p_r);
        void (*godot_variant_new_string)(godot_variant *r_dest, const godot_string *p_s);
        void (*godot_variant_new_vector2)(godot_variant *r_dest, const godot_vector2 *p_v2);
        void (*godot_variant_new_rect2)(godot_variant *r_dest, const godot_rect2 *p_rect2);
        void (*godot_variant_new_vector3)(godot_variant *r_dest, const godot_vector3 *p_v3);
        void (*godot_variant_new_transform2d)(godot_variant *r_dest, const godot_transform2d *p_t2d);
        void (*godot_variant_new_plane)(godot_variant *r_dest, const godot_plane *p_plane);
        void (*godot_variant_new_quat)(godot_variant *r_dest, const godot_quat *p_quat);
        void (*godot_variant_new_aabb)(godot_variant *r_dest, const godot_aabb *p_aabb);
        void (*godot_variant_new_basis)(godot_variant *r_dest, const godot_basis *p_basis);
        void (*godot_variant_new_transform)(godot_variant *r_dest, const godot_transform *p_trans);
        void (*godot_variant_new_color)(godot_variant *r_dest, const godot_color *p_color);
        void (*godot_variant_new_node_path)(godot_variant *r_dest, const godot_node_path *p_np);
        void (*godot_variant_new_rid)(godot_variant *r_dest, const godot_rid *p_rid);
        void (*godot_variant_new_object)(godot_variant *r_dest, const godot_object *p_obj);
        void (*godot_variant_new_dictionary)(godot_variant *r_dest, const godot_dictionary *p_dict);
        void (*godot_variant_new_array)(godot_variant *r_dest, const godot_array *p_arr);
        void (*godot_variant_new_pool_byte_array)(godot_variant *r_dest, const godot_pool_byte_array *p_pba);
        void (*godot_variant_new_pool_int_array)(godot_variant *r_dest, const godot_pool_int_array *p_pia);
        void (*godot_variant_new_pool_real_array)(godot_variant *r_dest, const godot_pool_real_array *p_pra);
        void (*godot_variant_new_pool_string_array)(godot_variant *r_dest, const godot_pool_string_array *p_psa);
        void (*godot_variant_new_pool_vector2_array)(godot_variant *r_dest, const godot_pool_vector2_array *p_pv2a);
        void (*godot_variant_new_pool_vector3_array)(godot_variant *r_dest, const godot_pool_vector3_array *p_pv3a);
        void (*godot_variant_new_pool_color_array)(godot_variant *r_dest, const godot_pool_color_array *p_pca);
        godot_bool (*godot_variant_as_bool)(const godot_variant *p_self);
        uint64_t (*godot_variant_as_uint)(const godot_variant *p_self);
        int64_t (*godot_variant_as_int)(const godot_variant *p_self);
        double (*godot_variant_as_real)(const godot_variant *p_self);
        godot_string (*godot_variant_as_string)(const godot_variant *p_self);
        godot_vector2 (*godot_variant_as_vector2)(const godot_variant *p_self);
        godot_rect2 (*godot_variant_as_rect2)(const godot_variant *p_self);
        godot_vector3 (*godot_variant_as_vector3)(const godot_variant *p_self);
        godot_transform2d (*godot_variant_as_transform2d)(const godot_variant *p_self);
        godot_plane (*godot_variant_as_plane)(const godot_variant *p_self);
        godot_quat (*godot_variant_as_quat)(const godot_variant *p_self);
        godot_aabb (*godot_variant_as_aabb)(const godot_variant *p_self);
        godot_basis (*godot_variant_as_basis)(const godot_variant *p_self);
        godot_transform (*godot_variant_as_transform)(const godot_variant *p_self);
        godot_color (*godot_variant_as_color)(const godot_variant *p_self);
        godot_node_path (*godot_variant_as_node_path)(const godot_variant *p_self);
        godot_rid (*godot_variant_as_rid)(const godot_variant *p_self);
        godot_object *(*godot_variant_as_object)(const godot_variant *p_self);
        godot_dictionary (*godot_variant_as_dictionary)(const godot_variant *p_self);
        godot_array (*godot_variant_as_array)(const godot_variant *p_self);
        godot_pool_byte_array (*godot_variant_as_pool_byte_array)(const godot_variant *p_self);
        godot_pool_int_array (*godot_variant_as_pool_int_array)(const godot_variant *p_self);
        godot_pool_real_array (*godot_variant_as_pool_real_array)(const godot_variant *p_self);
        godot_pool_string_array (*godot_variant_as_pool_string_array)(const godot_variant *p_self);
        godot_pool_vector2_array (*godot_variant_as_pool_vector2_array)(const godot_variant *p_self);
        godot_pool_vector3_array (*godot_variant_as_pool_vector3_array)(const godot_variant *p_self);
        godot_pool_color_array (*godot_variant_as_pool_color_array)(const godot_variant *p_self);
        godot_variant (*godot_variant_call)(godot_variant *p_self, const godot_string *p_method, const godot_variant **p_args, const godot_int p_argcount, godot_variant_call_error *r_error);
        godot_bool (*godot_variant_has_method)(const godot_variant *p_self, const godot_string *p_method);
        godot_bool (*godot_variant_operator_equal)(const godot_variant *p_self, const godot_variant *p_other);
        godot_bool (*godot_variant_operator_less)(const godot_variant *p_self, const godot_variant *p_other);
        godot_bool (*godot_variant_hash_compare)(const godot_variant *p_self, const godot_variant *p_other);
        godot_bool (*godot_variant_booleanize)(const godot_variant *p_self);
        void (*godot_variant_destroy)(godot_variant *p_self);


