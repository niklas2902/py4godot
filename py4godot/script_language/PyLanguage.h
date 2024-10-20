#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/ScriptLanguageExtension/ScriptLanguageExtension.h"
#include "py4godot/cppclasses/EditorInterface/EditorInterface.h"
#include "py4godot/cppclasses/Theme/Theme.h"
#include "py4godot/cppclasses/ImageTexture/ImageTexture.h"
#include "py4godot/cppclasses/Image/Image.h"
#include <unordered_set>

void register_class();
void deinit_func_names();
namespace godot{
    class PyLanguage:public ScriptLanguageExtension{
      const char* language_name = "Python";
      const char* extension;
      std::unordered_set<const char*> keywords;
      unsigned int counter;

      public:
          static PyLanguage* constructor();
          void _init_values(); //# self-defined
          void _new(GDExtensionTypePtr res);
          void _get_name(GDExtensionTypePtr res);
          void _init(GDExtensionTypePtr res);
          void _get_type(GDExtensionTypePtr res);
          void _get_extension(GDExtensionTypePtr res);
          void _finish(GDExtensionTypePtr res);
          void _get_reserved_words(GDExtensionTypePtr res);
          void _is_control_flow_keyword( String& keyword,GDExtensionTypePtr res);
          void _get_comment_delimiters(GDExtensionTypePtr res);
          void _get_string_delimiters(GDExtensionTypePtr res);
          void _make_template( String& template_, String& class_name, String& base_class_name, GDExtensionTypePtr res);
          void _get_built_in_templates( StringName& object, GDExtensionTypePtr res);
          void _is_using_templates(GDExtensionTypePtr res);
          void _validate( String& script, String& path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines, GDExtensionTypePtr res);
          void _validate_path( String& path, GDExtensionTypePtr res);
          void _create_script(GDExtensionTypePtr res);
          void _has_named_classes(GDExtensionTypePtr res);
          void _supports_builtin_mode(GDExtensionTypePtr res);
          void _supports_documentation(GDExtensionTypePtr res);
          void _can_inherit_from_file(GDExtensionTypePtr res);
          void _can_make_function(GDExtensionTypePtr res);
          void _find_function( String& class_name, String& function_name, GDExtensionTypePtr res);
          void _make_function( String& class_name, String& function_name, PackedStringArray& function_args, GDExtensionTypePtr res);
          void _open_in_external_editor( Script& script, int line, int column, GDExtensionTypePtr res);
          void _overrides_external_editor(GDExtensionTypePtr res);
          void _complete_code( String& code, String& path, Object& owner, GDExtensionTypePtr res);
          void _lookup_code( String& code, String& symbol, String& path, Object& owner, GDExtensionTypePtr res);
          void _auto_indent_code( String& code, int from_line, int to_line, GDExtensionTypePtr res);
          void _add_global_constant( StringName& name, Variant& value, GDExtensionTypePtr res);
          void _add_named_global_constant( StringName& name, Variant& value, GDExtensionTypePtr res);
          void _remove_named_global_constant( StringName& name, GDExtensionTypePtr res);
          void _thread_enter(GDExtensionTypePtr res);
          void _thread_exit(GDExtensionTypePtr res);
          void _debug_get_error(GDExtensionTypePtr res);
          void _debug_get_stack_level_count(GDExtensionTypePtr res);
          void _debug_get_stack_level_line( int level, GDExtensionTypePtr res);
          void _debug_get_stack_level_function( int level, GDExtensionTypePtr res);
          void _debug_get_stack_level_locals( int level, int max_subitems, int max_depth, GDExtensionTypePtr res);
          void _debug_get_stack_level_members( int level, int max_subitems, int max_depth, GDExtensionTypePtr res);
          void _debug_get_stack_level_instance( int level, GDExtensionTypePtr res);
          void _debug_get_globals( int max_subitems, int max_depth, GDExtensionTypePtr res);
          void _debug_parse_stack_level_expression( int level, String& expression, int max_subitems, int max_depth, GDExtensionTypePtr res);
          void _debug_get_current_stack_info(GDExtensionTypePtr res);
          void _reload_all_scripts(GDExtensionTypePtr res);
          void _reload_tool_script( Script& script, bool soft_reload, GDExtensionTypePtr res);
          void _get_recognized_extensions(GDExtensionTypePtr res);
          void _get_public_functions(GDExtensionTypePtr res);
          void _get_public_constants(GDExtensionTypePtr res);
          void _get_public_annotations(GDExtensionTypePtr res);
          void _profiling_start(GDExtensionTypePtr res);
          void _profiling_stop(GDExtensionTypePtr res);
          void _frame(GDExtensionTypePtr res);
          void _handles_global_class_type( String& type, GDExtensionTypePtr res);
          void _get_global_class_name( String& path, GDExtensionTypePtr res);
          void _get_doc_comment_delimiters(GDExtensionTypePtr res);
          void _preferred_file_name_casing(GDExtensionTypePtr res);
          void init_theme_icon();
          void deinit_theme_icon();
    };
}