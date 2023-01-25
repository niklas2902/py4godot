from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *

from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptLanguage.ScriptLanguage cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.Object.Object cimport *

cdef register_class()

cdef class PyLanguage(ScriptLanguageExtension):
  cdef char* language_name
  cdef char* extension
  cdef set keywords

  cdef void _init_values(self) # self-defined
  cdef new(self, GDNativeTypePtr res)
  cdef _get_name(self, GDNativeTypePtr res)
  cdef _init(self, GDNativeTypePtr res)
  cdef _get_type(self, GDNativeTypePtr res)
  cdef _get_extension(self, GDNativeTypePtr res)
  cdef _execute_file(self, String path, GDNativeTypePtr res)
  cdef _finish(self, GDNativeTypePtr res)
  cdef _get_reserved_words(self, GDNativeTypePtr res)
  cdef _is_control_flow_keyword(self, String keyword,GDNativeTypePtr res)
  cdef _get_comment_delimiters(self, GDNativeTypePtr res)
  cdef _get_string_delimiters(self, GDNativeTypePtr res)
  cdef _make_template(self, String template, String class_name, String base_class_name, GDNativeTypePtr res)
  cdef _get_built_in_templates(self, StringName object, GDNativeTypePtr res)
  cdef _is_using_templates(self, GDNativeTypePtr res)
  cdef _validate(self, String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines, GDNativeTypePtr res)
  cdef _validate_path(self, String path, GDNativeTypePtr res)
  cdef _create_script(self, GDNativeTypePtr res)
  cdef _has_named_classes(self, GDNativeTypePtr res)
  cdef _supports_builtin_mode(self, GDNativeTypePtr res)
  cdef _supports_documentation(self, GDNativeTypePtr res)
  cdef _can_inherit_from_file(self, GDNativeTypePtr res)
  cdef _find_function(self, String class_name, String function_name, GDNativeTypePtr res)
  cdef _make_function(self, String class_name, String function_name, PackedStringArray function_args, GDNativeTypePtr res)
  cdef _open_in_external_editor(self, Script script, int line, int column, GDNativeTypePtr res)
  cdef _overrides_external_editor(self, GDNativeTypePtr res)
  cdef _complete_code(self, String code, String path, Object owner, GDNativeTypePtr res)
  cdef _lookup_code(self, String code, String symbol, String path, Object owner, GDNativeTypePtr res)
  cdef _auto_indent_code(self, String code, int from_line, int to_line, GDNativeTypePtr res)
  cdef _add_global_constant(self, StringName name, Variant value, GDNativeTypePtr res)
  cdef _add_named_global_constant(self, StringName name, Variant value, GDNativeTypePtr res)
  cdef _remove_named_global_constant(self, StringName name, GDNativeTypePtr res)
  cdef _thread_enter(self, GDNativeTypePtr res)
  cdef _thread_exit(self, GDNativeTypePtr res)
  cdef _debug_get_error(self, GDNativeTypePtr res)
  cdef _debug_get_stack_level_count(self, GDNativeTypePtr res)
  cdef _debug_get_stack_level_instance(self,int val, GDNativeTypePtr res)
  cdef _debug_get_stack_level_line(self, int level, GDNativeTypePtr res)
  cdef _debug_get_stack_level_function(self, int level, GDNativeTypePtr res)
  cdef _debug_get_stack_level_locals(self, int level, int max_subitems, int max_depth, GDNativeTypePtr res)
  cdef _debug_get_stack_level_members(self, int level, int max_subitems, int max_depth, GDNativeTypePtr res)
  cdef _debug_get_globals(self, int max_subitems, int max_depth, GDNativeTypePtr res)
  cdef _debug_parse_stack_level_expression(self, int level, String expression, int max_subitems, int max_depth, GDNativeTypePtr res)
  cdef _debug_get_current_stack_info(self, GDNativeTypePtr res)
  cdef _reload_all_scripts(self, GDNativeTypePtr res)
  cdef _reload_tool_script(self, Script script, bool soft_reload, GDNativeTypePtr res)
  cdef _get_recognized_extensions(self, GDNativeTypePtr res)
  cdef _get_public_functions(self, GDNativeTypePtr res)
  cdef _get_public_constants(self, GDNativeTypePtr res)
  cdef _get_public_annotations(self, GDNativeTypePtr res)
  cdef _profiling_start(self, GDNativeTypePtr res)
  cdef _profiling_stop(self, GDNativeTypePtr res)
  cdef _refcount_incremented_instance_binding(self, Object object, GDNativeTypePtr res)
  cdef _refcount_decremented_instance_binding(self, Object object, GDNativeTypePtr res)
  cdef _frame(self, GDNativeTypePtr res)
  cdef _handles_global_class_type(self, String type, GDNativeTypePtr res)
  cdef _get_global_class_name(self, String path, GDNativeTypePtr res)
  cdef _free_instance_binding_data(self, Object o, GDNativeTypePtr res)
  cdef _alloc_instance_binding_data(self, Object o, GDNativeTypePtr res)