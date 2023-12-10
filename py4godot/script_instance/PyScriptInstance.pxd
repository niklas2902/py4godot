from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.classes.generated4_core cimport *

cdef api GDExtensionBool instance_set(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionConstVariantPtr p_value) with gil
#cdef api GDExtensionBool instance_get(GDExtensionScriptInstanceDataPtr p_instance, GDExtensionConstStringNamePtr p_name, GDExtensionVariantPtr r_ret) with gil

#cdef api void instance_call(GDExtensionScriptInstanceDataPtr p_self, GDExtensionConstStringNamePtr p_method, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_argument_count, GDExtensionVariantPtr r_return, GDExtensionCallError *r_error) with gil
