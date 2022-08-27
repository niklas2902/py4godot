cdef extern from "gdnative_api_struct.gen.h":

    ctypedef void godot_object

    struct godot_gdnative_ext_nativescript_api_struct:
        void *(*godot_nativescript_get_userdata)(godot_object *p_instance)

    struct godot_gdnative_ext_nativescript_1_1_api_struct:
        pass
    struct godot_gdnative_core_api_struct:
        pass

cdef godot_gdnative_core_api_struct* get_core()

cdef godot_gdnative_ext_nativescript_1_1_api_struct* get_nativescript()