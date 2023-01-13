from py4godot.classes.ScriptExtension.ScriptExtension cimport *
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Script.Script cimport *

cdef void register_class_py_script_extension() with gil

cdef class PyScriptExtension(ScriptExtension):
  cdef char* script_name
  cdef ScriptLanguageExtension language

  cdef void _init_values(self) # self-defined
  cdef void set_language(self, ScriptLanguageExtension language) # self-defined
  cdef void _editor_can_reload_from_file(self, GDNativeTypePtr res)
  cdef void _can_instantiate(self, GDNativeTypePtr res)
  cdef void _get_base_script(self, GDNativeTypePtr res)
  cdef void _inherits_script(self, Script script, GDNativeTypePtr res)
  cdef void _get_instance_base_type(self, GDNativeTypePtr res)
  cdef void _instance_create(self, Object for_object, GDNativeTypePtr res)
  cdef void _placeholder_instance_create(self, Object for_object, GDNativeTypePtr res)
  cdef void _instance_has(self, Object object, GDNativeTypePtr res)
  cdef void _has_source_code(self, GDNativeTypePtr res)
  cdef  void _get_source_code(self, GDNativeTypePtr res)
  cdef  void _set_source_code(self, String code, GDNativeTypePtr res)
  cdef  void _reload(self, bool keep_state, GDNativeTypePtr res)
  cdef  void _get_documentation(self, GDNativeTypePtr res)
  cdef  void _has_method(self, StringName method, GDNativeTypePtr res)
  cdef  void _get_method_info(self, StringName method, GDNativeTypePtr res)
  cdef  void _is_tool(self, GDNativeTypePtr res)
  cdef  void _is_valid(self, GDNativeTypePtr res)
  cdef  void _get_language(self, GDNativeTypePtr res)
  cdef  void _has_script_signal(self, StringName signal, GDNativeTypePtr res)
  cdef  void _get_script_signal_list(self, GDNativeTypePtr res)
  cdef  void _has_property_default_value(self, StringName property, GDNativeTypePtr res)
  cdef  void _get_property_default_value(self, StringName property, GDNativeTypePtr res)
  cdef  void _update_exports(self, GDNativeTypePtr res)
  cdef  void _get_script_method_list(self, GDNativeTypePtr res)
  cdef  void _get_script_property_list(self, GDNativeTypePtr res)
  cdef  void _get_member_line(self, StringName member, GDNativeTypePtr res)
  cdef  void _get_constants(self, GDNativeTypePtr res)
  cdef  void _get_members(self, GDNativeTypePtr res)
  cdef  void _is_placeholder_fallback_enabled(self, GDNativeTypePtr res)
  cdef  void _get_rpc_config(self, GDNativeTypePtr res)