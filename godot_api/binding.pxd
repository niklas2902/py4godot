cdef extern from "binding.h":

    ctypedef struct godot_variant:
        pass
    ctypedef struct godot_object:
        pass
    ctypedef struct godot_method_bind:
        pass
    ctypedef godot_object *(*godot_class_constructor)()

    void hello(const char *name)
    godot_variant simple_get_data(godot_object *p_instance, void *p_method_data, void *p_user_data, int p_num_args, godot_variant **p_args)


    struct godot_gdnative_ext_nativescript_api_struct:
        void *(*godot_nativescript_get_userdata)(godot_object *p_instance)

    struct godot_gdnative_ext_nativescript_1_1_api_struct:
        void *(*godot_nativescript_get_instance_binding_data)(int p_idx, godot_object *p_object)


    const godot_gdnative_ext_nativescript_api_struct *nativescript_api
    const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11

    godot_object *_owner


    ##################################c types########################################
    ctypedef struct godot_array:
        pass
    ctypedef struct godot_bool:
        pass
    ctypedef struct godot_string:
        pass
    ctypedef struct godot_real:
        pass
    ctypedef struct wchar_t:
        pass
    ctypedef struct uint32_t:
        pass
    ctypedef struct uint64_t:
        pass
    ctypedef struct godot_pool_byte_array:
        pass
    ctypedef struct godot_vector2:
        pass
    ctypedef struct godot_rect2:
        pass
    ctypedef struct godot_vector3:
        pass
    ctypedef struct godot_transform2d:
        pass
    ctypedef struct godot_plane:
        pass
    ctypedef struct godot_quat:
        pass
    ctypedef struct godot_aabb:
        pass
    ctypedef struct godot_basis:
        pass
    ctypedef struct godot_transform:
        pass
    ctypedef struct godot_color:
        pass
    ctypedef struct godot_node_path:
        pass
    ctypedef struct godot_rid:
        pass
    ctypedef struct godot_object:
        pass
    ctypedef struct godot_dictionary:
        pass
    ctypedef struct godot_int:
        pass


    ##Rework
    ctypedef struct String:
        pass
    ctypedef struct bool:
        pass
    ctypedef struct Array:
        pass
    ctypedef struct Reference:
        pass
    ctypedef struct PoolStringArray:
        pass
    ctypedef struct Variant:
        pass
    ctypedef struct Error:
        pass
