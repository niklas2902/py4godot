from cython.operator cimport dereference
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from py4godot.utils.print_tools import *
from py4godot.Instance_data.InstanceData cimport *

cdef GDExtensionObjectPtr get_owner (GDExtensionScriptInstanceDataPtr p_instance) with gil:
    print_warning("-------------------instance:get_owner---------------")
    cdef InstanceData instance = <InstanceData>p_instance
    return instance.owner.get_godot_owner()

cdef GDExtensionBool is_placeholder(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    print_warning("------is_place-holder-------")
    return 1

cdef GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) with gil:
    return 1
cdef GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil:
    return 1
cdef const GDExtensionPropertyInfo *instance_get_property_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil:
    r_count[0] = 0 #TODO enable properties
    print_warning("prop_count:"+ str(dereference(r_count)))
    return NULL
cdef void instance_free_property_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionPropertyInfo *p_list) with gil:
    pass
cdef GDExtensionVariantType instance_get_property_type(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionBool *r_is_valid) with gil:
    return GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL

cdef GDExtensionBool instance_property_can_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil:
    return 1
cdef GDExtensionBool instance_property_get_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil:
    return 1

cdef void instance_property_state_add(GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value, void *p_userdata) with gil:
    pass
cdef void instance_get_property_state(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata) with gil:
    pass

cdef const GDExtensionMethodInfo * instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil:
    return NULL
cdef void instance_free_method_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionMethodInfo *p_list) with gil:
    pass

cdef GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil:
    return 1

cdef void instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error)with gil:
    pass
cdef void instance_notification(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what) with gil:
    pass
cdef void instance_to_string(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out) with gil:
    pass

cdef void instance_ref_count_incremented(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass
cdef GDExtensionBool instance_ref_count_decremented(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass

cdef GDExtensionObjectPtr instance_get_script(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    cdef InstanceData instance = <InstanceData>p_instance
    return instance.script.godot_owner

cdef GDExtensionScriptLanguagePtr instance_get_language(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    return NULL

cdef void instance_free(GDExtensionScriptInstanceDataPtr p_instance) with gil:
    pass

cdef GDExtensionScriptInstanceInfo get_instance():
    return native_script_instance

cdef GDExtensionScriptInstanceInfo* get_instance_ptr():
    return &native_script_instance
"""
	GDExtensionScriptInstanceGetLanguage get_language_func;

	GDExtensionScriptInstanceFree free_func;
"""
native_script_instance.get_owner_func = get_owner
native_script_instance.is_placeholder_func = is_placeholder
native_script_instance.set_func = instance_set
native_script_instance.get_func = instance_get
native_script_instance.get_property_list_func = instance_get_property_list
native_script_instance.free_property_list_func = instance_free_property_list
native_script_instance.property_can_revert_func = instance_property_can_revert
native_script_instance.property_get_revert_func = instance_property_get_revert
native_script_instance.get_property_state_func = instance_get_property_state
native_script_instance.get_method_list_func = instance_get_method_list
native_script_instance.free_method_list_func = instance_free_method_list
native_script_instance.get_property_type_func = instance_get_property_type
native_script_instance.has_method_func = instance_has_method
native_script_instance.call_func = instance_call
native_script_instance.notification_func = instance_notification
#native_script_instance.to_string_func = instance_to_string
native_script_instance. refcount_incremented_func = instance_ref_count_incremented
native_script_instance.refcount_decremented_func = instance_ref_count_decremented
native_script_instance.get_script_func = instance_get_script
native_script_instance.get_language_func = instance_get_language
native_script_instance.free_func = instance_free