from cython.operator cimport dereference
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from py4godot.Instance_data.InstanceData cimport *
from py4godot.pluginscript_api.utils.PropertyDescription cimport *
from py4godot.core.variant4.Variant4 cimport *
from libc.stdlib cimport malloc, free

cdef GDExtensionPropertyInfo * property_infos
cdef object vector = None
cdef list converted_vals = []
cdef list variants = []
cdef object get_val
cdef Variant get_variant
cdef list objects = []
cdef GDExtensionObjectPtr get_owner (GDExtensionScriptInstanceDataPtr p_instance) with gil:
    print_error("-------------------instance:get_owner---------------")
    cdef InstanceData instance = <InstanceData>p_instance
    return instance.owner.get_godot_owner()

cdef api GDExtensionBool is_placeholder(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    print_error("------is_place-holder-------")
    return 0

cdef api GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) with gil:
    cdef InstanceData instance = <InstanceData>p_instance
    #TODO still a problem with custom string attributes. Why is this still crashing?
    cdef StringName method_name = StringName.new_static(p_name)
    cdef String method_name_str = String.new2(method_name)
    cdef char* c_str = gd_string_c_string(gdnative_interface,method_name_str.godot_owner, method_name_str.length())
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method:"+py_method_name_str)
    cdef Variant var
    if py_method_name_str == "visibility_parent":
        return 0
    try:
        var = Variant.new_static(p_value)
        #variants.append(var)
        vector = var.get_converted_value()
        setattr(instance.owner,py_method_name_str, vector)
    except Exception as e:
        print_error(f"An Exception happened:{e}|owner:{instance.owner}" )
    print_error("after set method")
    return 1

cdef api GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil:
    global get_val
    cdef InstanceData instance = <InstanceData>p_instance

    cdef StringName method_name = StringName.new_static(p_name)
    cdef String method_name_str = String.new2(method_name)
    cdef char* c_str = gd_string_c_string(gdnative_interface,method_name_str.godot_owner, method_name_str.length())
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method_get:"+py_method_name_str)

    get_val = None
    cdef Variant get_var = Variant.new_static(r_ret)
    if py_method_name_str == "_dont_undo_redo":
        return 0
    if py_method_name_str == "visibility_parent":
        return 0
    print_error("get_prop:"+str(py_method_name_str))
    if(py_method_name_str != "script"):
        print_error("before get_val")
        get_val = getattr(instance.owner,py_method_name_str)
        try:
            get_var.init_type(get_val)
        except Exception as e:
            print_error("exception:",e)
    else:
        get_var.init_type(instance.script)
    print_error("finish_get_prop:"+str(py_method_name_str))
    return 1

cdef api const GDExtensionPropertyInfo *instance_get_property_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil:
    global property_infos
    cdef InstanceData instance = <InstanceData>p_instance
    r_count[0] = len(instance.properties) #TODO enable properties
    print_error("list of properties from python:", len(instance.properties))
    print_error("prop_count:"+ str(dereference(r_count)))
    print_error("after getting property_info")

    if property_infos != NULL:
        return property_infos

    property_infos = <GDExtensionPropertyInfo*>malloc(sizeof(GDExtensionPropertyInfo)* len(instance.properties))
    for index in range(0, len(instance.properties)):
        property_infos[index] = (<PropertyDescription>(instance.properties[index])).property_info

    return property_infos
cdef api void instance_free_property_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionPropertyInfo *p_list) with gil:
    pass
cdef api GDExtensionVariantType instance_get_property_type(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionBool *r_is_valid) with gil:
    return GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL

cdef api GDExtensionBool instance_property_can_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil:
    return 1
cdef api GDExtensionBool instance_property_get_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil:
    return 1

cdef api void instance_property_state_add(GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value, void *p_userdata) with gil:
    pass
cdef api void instance_get_property_state(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata) with gil:
    pass

cdef api const GDExtensionMethodInfo * instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil:
    print_error("get_method_list")
    return NULL
cdef api void instance_free_method_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionMethodInfo *p_list) with gil:
    pass

cdef api GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil:
    cdef StringName method_name = StringName.new_static(p_name)
    cdef String method_name_str = String.new2(method_name)
    cdef str py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("has_method:" + py_method_name_str)

    return int(hasattr(instance.owner, py_method_name_str))

cdef api void instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) with gil:
    print_error("call_method")
    cdef InstanceData instance = <InstanceData>p_self

    cdef StringName method_name = StringName.new_static(p_method)
    cdef String method_name_str = String.new2(method_name)
    cdef char* c_str = gd_string_c_string(gdnative_interface,method_name_str.godot_owner, method_name_str.length())
    cdef unicode py_method_name_str = gd_string_to_py_string(method_name_str)
    print_error("print_method:"+py_method_name_str)
    cdef list args = []
    cdef object result = None

    if(py_method_name_str == "_get_linked_undo_properties"):
        return

    if(py_method_name_str == "_dont_undo_redo"):
        return

    for index in range(0, p_argument_count):
        args.append(Variant.new_static(p_args[index]).get_converted_value())
    try:
        if not hasattr(instance.owner,py_method_name_str):
            return
        result = getattr(instance.owner, py_method_name_str)(*args)
    except Exception as e:
        print_error(f"An Exception happened:{e}|owner:{instance.owner}" )

    cdef Variant var = Variant.new_static(r_return)
    var.init_type(result)
    print_error(f"called method({py_method_name_str}):", result)
cdef api void instance_notification(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what) with gil:
    pass
cdef api void instance_to_string(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out) with gil:
    pass

cdef api void instance_ref_count_incremented(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass
cdef api GDExtensionBool instance_ref_count_decremented(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass

cdef api GDExtensionObjectPtr instance_get_script(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    print_error("instance_get_script")
    cdef InstanceData instance = <InstanceData>p_instance
    return instance.script.godot_owner

cdef api GDExtensionScriptLanguagePtr instance_get_language(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    return NULL

cdef api void instance_free(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass