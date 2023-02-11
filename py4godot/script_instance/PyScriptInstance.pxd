
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptLanguage.ScriptLanguage cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.Object.Object cimport *

cdef GDExtensionObjectPtr get_owner (GDExtensionScriptInstanceDataPtr p_instance) with gil
cdef GDExtensionBool is_placeholder(GDExtensionScriptInstanceDataPtr p_instance) with gil
cdef GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) with gil
cdef GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil
cdef const GDExtensionPropertyInfo *instance_get_property_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil
cdef void instance_free_property_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionPropertyInfo *p_list) with gil
cdef GDExtensionVariantType instance_get_property_type(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionBool *r_is_valid) with gil

cdef GDExtensionBool instance_property_can_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil
cdef GDExtensionBool instance_property_get_revert(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil

cdef void instance_property_state_add(GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value, void *p_userdata) with gil
cdef void instance_get_property_state(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionScriptInstancePropertyStateAdd p_add_func, void *p_userdata) with gil

cdef const GDExtensionMethodInfo * instance_get_method_list(GDExtensionScriptInstanceDataPtr p_instance, uint32_t *r_count) with gil
cdef void instance_free_method_list(GDExtensionScriptInstanceDataPtr p_instance, const GDExtensionMethodInfo *p_list) with gil

cdef GDExtensionBool instance_has_method(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name) with gil

cdef void instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) with gil
cdef void instance_notification(GDExtensionScriptInstanceDataPtr p_instance, int32_t p_what) with gil;
cdef void instance_to_string(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionBool *r_is_valid, GDExtensionStringPtr r_out) with gil;

cdef void instance_ref_count_incremented(GDExtensionScriptInstanceDataPtr p_instance) with gil;
cdef GDExtensionBool instance_ref_count_decremented(GDExtensionScriptInstanceDataPtr p_instance) with gil;

cdef GDExtensionObjectPtr instance_get_script(GDExtensionScriptInstanceDataPtr p_instance) with gil;

cdef GDExtensionScriptLanguagePtr instance_get_language(GDExtensionScriptInstanceDataPtr p_instance) with gil;

cdef void instance_free(GDExtensionScriptInstanceDataPtr p_instance) with gil;


cdef GDExtensionScriptInstanceInfo native_script_instance

cdef GDExtensionScriptInstanceInfo get_instance()

cdef GDExtensionScriptInstanceInfo* get_instance_ptr()