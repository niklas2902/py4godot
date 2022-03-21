cdef godot_gdnative_ext_nativescript_1_1_api_struct* nativescript_api_holder
cdef godot_gdnative_core_api_struct* api_core_holder

cdef api set_native_script_holder(godot_gdnative_ext_nativescript_1_1_api_struct* api):
    global nativescript_api_holder
    print("-----------------set_nativescript-------------------")
    print("core_holder_api_nativescript:")
    print(<unsigned int>&api)
    nativescript_api_holder = api

cdef api set_core_holder(godot_gdnative_core_api_struct* core):
    global api_core_holder
    print("-----------------set_core-------------------")
    api_core_holder = core
    print("core_holder_api_core_ptr:")
    print(<unsigned int>&core)

cdef godot_gdnative_core_api_struct* get_core():
    print("get_core:")
    print("core_holder_nativescript_ptr:")
    print(<unsigned int>&api_core_holder)
    print("core is Null:", api_core_holder == NULL)
    if(api_core_holder == NULL):
        raise Exception ("returning api_core as NULL")
    return api_core_holder

cdef godot_gdnative_ext_nativescript_1_1_api_struct* get_nativescript():

    print("get_nativescript:")
    print("core_holder_api_core_ptr:")
    print(<unsigned int>&nativescript_api_holder)
    if(api_core_holder == NULL):
        raise Exception ("returning api_core as NULL")
    return nativescript_api_holder
