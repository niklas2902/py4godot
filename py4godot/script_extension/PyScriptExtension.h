#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/ScriptExtension/ScriptExtension.h"
#include "py4godot/script_language/PyLanguage.h"
#include <unordered_set>

void register_class_script();
namespace godot{
    class PyScriptExtension:public ScriptExtension{
      const char* script_name;
      const char* source_code;
      const char* path;
      /*cdef Wrapper4 gd_obj
      cdef object gd_class
      cdef list properties
      cdef list methods
      cdef list signals
      cdef DictionaryArray array
      */


      public:
          PyLanguage* lang;

          static PyScriptExtension* constructor(PyLanguage* language);
          void _init_values(); //# self-defined
           void _editor_can_reload_from_file(GDExtensionTypePtr res);
           void _can_instantiate(GDExtensionTypePtr res);
           void  _get_base_script(GDExtensionTypePtr res);
           void _get_global_name(GDExtensionTypePtr res);
           void _inherits_script( Script* script, GDExtensionTypePtr res);
           void _get_instance_base_type(GDExtensionTypePtr res);
           void _instance_create( Object& for_object, GDExtensionTypePtr res);
           void _placeholder_instance_create( Object& for_object, GDExtensionTypePtr res);
           void _instance_has( Object& object, GDExtensionTypePtr res);
           void _has_source_code(GDExtensionTypePtr res);
           void _get_source_code(GDExtensionTypePtr& res);
           void _set_source_code( String& code, GDExtensionTypePtr res);
           void _reload( bool keep_state, GDExtensionTypePtr res);
           void _get_documentation(GDExtensionTypePtr res);
           void _has_method( StringName& method, GDExtensionTypePtr res);
           void _get_method_info( StringName& method, GDExtensionTypePtr res);
           void _is_tool(GDExtensionTypePtr res);
           void _is_valid(GDExtensionTypePtr res);
           void _get_language(GDExtensionTypePtr res);
           void _has_script_signal( StringName& signal, GDExtensionTypePtr res);
           void _get_script_signal_list(GDExtensionTypePtr res);
           void _has_property_default_value( StringName& property, GDExtensionTypePtr res);
           void _get_property_default_value( StringName& property, GDExtensionTypePtr res);
           void _update_exports(GDExtensionTypePtr res);
           void _get_script_method_list(GDExtensionTypePtr res);
           void _get_script_property_list(GDExtensionTypePtr res);
           void _get_member_line( StringName& member, GDExtensionTypePtr res);
           void _get_constants(GDExtensionTypePtr res);
           void _get_members(GDExtensionTypePtr res);
           void _is_placeholder_fallback_enabled(GDExtensionTypePtr res);
           void _get_rpc_config(GDExtensionTypePtr res);

           void _set_source_code_internal(String source_code);
           void set_path(const char* path);
    };
}