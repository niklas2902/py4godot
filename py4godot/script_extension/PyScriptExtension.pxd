from py4godot.classes.ScriptExtension.ScriptExtension cimport *
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.utils.Wrapper4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.typed_arrays cimport *
from py4godot.script_language.PyLanguage cimport *
cdef void register_class_py_script_extension() with gil
cdef PyLanguage py_language

cdef void set_lang(PyLanguage lang)

cdef class PyScriptExtension(ScriptExtension):
  cdef char* script_name
  cdef ScriptLanguageExtension language
  cdef str source_code
  cdef Wrapper4 gd_obj
  cdef object gd_class
  cdef list properties
  cdef list methods
  cdef list signals
  cdef DictionaryArray array

  cdef void _init_values(self) # self-defined
  cdef void set_py_source_code(self, str path, str source_code) #self-defined
  cdef str get_py_source_code(self) #self-defined

  cdef void set_language(self, ScriptLanguageExtension language) # self-defined
  cdef void _editor_can_reload_from_file(self, GDExtensionTypePtr res)
  cdef void _can_instantiate(self, GDExtensionTypePtr res)
  cdef void _get_base_script(self, GDExtensionTypePtr res)
  cdef void _inherits_script(self, Script script, GDExtensionTypePtr res)
  cdef void _get_instance_base_type(self, GDExtensionTypePtr res)
  cdef void _instance_create(self, Object for_object, GDExtensionTypePtr res)
  cdef void _placeholder_instance_create(self, Object for_object, GDExtensionTypePtr res)
  cdef void _instance_has(self, Object object, GDExtensionTypePtr res)
  cdef void _has_source_code(self, GDExtensionTypePtr res)
  cdef  void _get_source_code(self, GDExtensionTypePtr res)
  cdef  void _set_source_code(self, String code, GDExtensionTypePtr res)
  cdef  void _reload(self, bool keep_state, GDExtensionTypePtr res)
  cdef  void _get_documentation(self, GDExtensionTypePtr res)
  cdef  void _has_method(self, StringName method, GDExtensionTypePtr res)
  cdef  void _get_method_info(self, StringName method, GDExtensionTypePtr res)
  cdef  void _is_tool(self, GDExtensionTypePtr res)
  cdef  void _is_valid(self, GDExtensionTypePtr res)
  cdef  void _get_language(self, GDExtensionTypePtr res)
  cdef  void _has_script_signal(self, StringName signal, GDExtensionTypePtr res)
  cdef  void _get_script_signal_list(self, GDExtensionTypePtr res)
  cdef  void _has_property_default_value(self, StringName property, GDExtensionTypePtr res)
  cdef  void _get_property_default_value(self, StringName property, GDExtensionTypePtr res)
  cdef  void _update_exports(self, GDExtensionTypePtr res)
  cdef  void _get_script_method_list(self, GDExtensionTypePtr res)
  cdef  void _get_script_property_list(self, GDExtensionTypePtr res)
  cdef  void _get_member_line(self, StringName member, GDExtensionTypePtr res)
  cdef  void _get_constants(self, GDExtensionTypePtr res)
  cdef  void _get_members(self, GDExtensionTypePtr res)
  cdef  void _is_placeholder_fallback_enabled(self, GDExtensionTypePtr res)
  cdef  void _get_rpc_config(self, GDExtensionTypePtr res)