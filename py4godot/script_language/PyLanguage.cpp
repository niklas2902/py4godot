#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include <cassert>

GDExtensionClassCreationInfo creation_info;

  PyLanguage PyLanguage::constructor(){
    PyLanguage* class_ = new PyLanguage();

    StringName class_name = c_string_to_string_name("PyLanguage");

    class_->set_godot_owner(_interface->classdb_construct_object(&class_name.godot_owner));
    _interface->object_set_instance(&class_->godot_owner,&class_name.godot_owner , &class_);

    class_->_init_values();
    return *class_;
}

  void PyLanguage::_init_values(){
    language_name = "PyScriptExtension";
    extension = "py";
    keywords = {"if","elif", "else"};
   }

  void PyLanguage::_new(GDExtensionTypePtr res){}
  void PyLanguage::_get_name(GDExtensionTypePtr res){}
  void PyLanguage::_init(GDExtensionTypePtr res){}

  void PyLanguage::_get_type(GDExtensionTypePtr res){}

  void PyLanguage::_get_extension(GDExtensionTypePtr res){
    _interface->string_new_with_utf8_chars(res, extension);
  }

  void PyLanguage::_finish(GDExtensionTypePtr res){}

  void PyLanguage::_get_reserved_words(GDExtensionTypePtr res){
    PackedStringArray array = PackedStringArray::new_static(res);
    array.push_back(c_string_to_string("del"));
    array.push_back(c_string_to_string("nonlocal"));
    array.push_back(c_string_to_string("yield"));
    array.push_back(c_string_to_string("finally"));
    array.push_back(c_string_to_string("for"));
    array.push_back(c_string_to_string("lambda"));
    array.push_back(c_string_to_string("return"));
    array.push_back(c_string_to_string("try"));
    array.push_back(c_string_to_string("assert"));
    array.push_back(c_string_to_string("True"));
    array.push_back(c_string_to_string("and"));
    array.push_back(c_string_to_string("continue"));
    array.push_back(c_string_to_string("in"));
    array.push_back(c_string_to_string("not"));
    array.push_back(c_string_to_string("from"));
    array.push_back(c_string_to_string("False"));
    array.push_back(c_string_to_string("raise"));
    array.push_back(c_string_to_string("while"));
    array.push_back(c_string_to_string("as"));
    array.push_back(c_string_to_string("else"));
    array.push_back(c_string_to_string("or"));
    array.push_back(c_string_to_string("except"));
    array.push_back(c_string_to_string("with"));
    array.push_back(c_string_to_string("pass"));
    array.push_back(c_string_to_string("import"));
    array.push_back(c_string_to_string("async"));
    array.push_back(c_string_to_string("break"));
    array.push_back(c_string_to_string("elif"));
    array.push_back(c_string_to_string("global"));
    array.push_back(c_string_to_string("None"));
    array.push_back(c_string_to_string("if"));
    array.push_back(c_string_to_string("def"));
    array.push_back(c_string_to_string("class"));
    array.push_back(c_string_to_string("is"));
    array.push_back(c_string_to_string("await"));
  }
  void PyLanguage::_is_control_flow_keyword(String keyword, GDExtensionTypePtr res){
    const char* py_string = gd_string_to_c_string(_interface,keyword.godot_owner, keyword.length());
    bool is_in_keywords = keywords.find(py_string) != keywords.end();
    *static_cast<bool*>(res) = is_in_keywords;
  }

  void PyLanguage::_get_comment_delimiters(GDExtensionTypePtr res){
    PackedStringArray array = PackedStringArray::new_static(res);
    array.push_back(c_string_to_string("#"));
  }

  void PyLanguage::_get_string_delimiters(GDExtensionTypePtr res){
    PackedStringArray array = PackedStringArray::new_static(res);
    array.push_back(c_string_to_string("\""));
    array.push_back(c_string_to_string("'"));
    array.push_back(c_string_to_string("'''"));
    array.push_back(c_string_to_string("\"\"\""));
  }

  void PyLanguage::_make_template(String template_, String class_name, String base_class_name,GDExtensionTypePtr res){
    /*cdef py_extension.PyScriptExtension extension_py = py_extension.PyScriptExtension.constructor()
    Py_INCREF(extension_py)
    set_gdnative_ptr(<GDExtensionTypePtr*> res, extension_py.godot_owner)*/
  }

  void PyLanguage::_get_built_in_templates(StringName object, GDExtensionTypePtr res){
  }

  void PyLanguage::_is_using_templates(GDExtensionTypePtr res){
  }

  void PyLanguage::_validate(String script, String path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines, GDExtensionTypePtr res){
    Dictionary res_dictionary = Dictionary::new_static(res);
    GDExtensionVariantPtr varptr = malloc(sizeof(uint8_t)*8);
    String key = c_string_to_string("valid");
    GDExtensionVariantFromTypeConstructorFunc constructor_func = _interface->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
    constructor_func(varptr,const_cast<GDExtensionTypePtr>(key.godot_owner));

    uint8_t valid = 1;
    GDExtensionVariantPtr value_var = _interface->dictionary_operator_index(const_cast<GDExtensionTypePtr>(res_dictionary.godot_owner), varptr);
     GDExtensionVariantFromTypeConstructorFunc constructor_func_valid = _interface->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL);

    constructor_func_valid(value_var, &valid);
    }

  void PyLanguage::_validate_path(String path, GDExtensionTypePtr res){
    *static_cast<uint8_t*>(res) = 1;
  }

  void PyLanguage::_create_script(GDExtensionTypePtr res){
    //py_extension.PyScriptExtension extension = py_extension.PyScriptExtension.constructor();
    //res = extension.godot_owner;
    //print_error("------------create_script-end---------");
}

  void PyLanguage::_has_named_classes(GDExtensionTypePtr res){
    *static_cast<uint8_t*>(res) = 0;
  }

  void PyLanguage::_supports_builtin_mode(GDExtensionTypePtr res){
}

  void PyLanguage::_supports_documentation(GDExtensionTypePtr res){}

  void PyLanguage::_can_inherit_from_file(GDExtensionTypePtr res){};

  void PyLanguage::_find_function(String class_name, String function_name, GDExtensionTypePtr res){}

  void PyLanguage::_make_function(String class_name, String function_name, PackedStringArray function_args, GDExtensionTypePtr res){}

  void PyLanguage::_open_in_external_editor(Script script, int line, int column, GDExtensionTypePtr res){}

  void PyLanguage::_overrides_external_editor(GDExtensionTypePtr res){
    *static_cast<uint8_t*>(res) = 0;
  }

  void PyLanguage::_complete_code(String code, String path, Object owner, GDExtensionTypePtr res){}

  void PyLanguage::_lookup_code(String code, String symbol, String path, Object owner, GDExtensionTypePtr res){}

  void PyLanguage::_auto_indent_code(String code, int from_line, int to_line, GDExtensionTypePtr res){}

  void PyLanguage::_add_global_constant(StringName name, Variant value, GDExtensionTypePtr res){}

  void PyLanguage::_add_named_global_constant(StringName name, Variant value, GDExtensionTypePtr res){}

  void PyLanguage::_remove_named_global_constant(StringName name, GDExtensionTypePtr res){}


  void PyLanguage::_thread_enter(GDExtensionTypePtr res){}

  void PyLanguage::_thread_exit(GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_error(GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_stack_level_count(GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_stack_level_line(int level, GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_stack_level_function(int level, GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_stack_level_locals(int level, int max_subitems, int max_depth, GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_stack_level_members(int level, int max_subitems, int max_depth, GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_globals(int max_subitems, int max_depth, GDExtensionTypePtr res){}

  void PyLanguage::_debug_parse_stack_level_expression(int level, String expression, int max_subitems, int max_depth, GDExtensionTypePtr res){}

  void PyLanguage::_debug_get_current_stack_info(GDExtensionTypePtr res){}

  void PyLanguage::_reload_all_scripts(GDExtensionTypePtr res){}

  void PyLanguage::_reload_tool_script(Script script, bool soft_reload, GDExtensionTypePtr res){}

  void  PyLanguage::_get_recognized_extensions(GDExtensionTypePtr res){
    PackedStringArray extensions = PackedStringArray::new_static(res);
    extensions.append(c_string_to_string("py"));
    extensions.append(c_string_to_string("pyw"));
    extensions.append(c_string_to_string("pyi"));
  }

  void PyLanguage::_get_public_functions(GDExtensionTypePtr res){}

  void PyLanguage::_get_public_constants(GDExtensionTypePtr res){}

  void PyLanguage::_get_public_annotations(GDExtensionTypePtr res){}

  void PyLanguage::_profiling_start(GDExtensionTypePtr res){}

  void PyLanguage::_profiling_stop(GDExtensionTypePtr res){}


  void PyLanguage::_frame(GDExtensionTypePtr res){}

  void PyLanguage::_handles_global_class_type(String type, GDExtensionTypePtr res){}

  void PyLanguage::_get_global_class_name(String path, GDExtensionTypePtr res){}


  void PyLanguage::_debug_get_stack_level_instance(int val, GDExtensionTypePtr res){}

  GDExtensionPtrOperatorEvaluator operator_equal_string_name;

bool string_names_equal(StringName left, StringName right){
     int8_t ret;
    operator_equal_string_name(left.godot_owner, right.godot_owner, &ret);
    return ret != 0;
}


void* create_instance_language(void* userdata){
     StringName class_name = c_string_to_string_name("ScriptLanguageExtension");
     GDExtensionObjectPtr gdnative_object = _interface->classdb_construct_object(&class_name.godot_owner);
    return gdnative_object;
}

#pragma region: generation

void call_virtual_func__get_name(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_name(r_ret);
}

StringName func_name__get_name;


void call_virtual_func__init(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_init(r_ret);
}

StringName func_name__init;


void call_virtual_func__get_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_type(r_ret);
}

StringName func_name__get_type;


void call_virtual_func__get_extension(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_extension(r_ret);
}

StringName func_name__get_extension;


void call_virtual_func__finish(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_finish(r_ret);
}

StringName func_name__finish;


void call_virtual_func__get_reserved_words(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_reserved_words(r_ret);
}

StringName func_name__get_reserved_words;


void call_virtual_func__is_control_flow_keyword(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>(p_args));



    pylanguage->_is_control_flow_keyword(args0,r_ret);
}

StringName func_name__is_control_flow_keyword;


void call_virtual_func__get_comment_delimiters(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_comment_delimiters(r_ret);
}

StringName func_name__get_comment_delimiters;


void call_virtual_func__get_string_delimiters(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_string_delimiters(r_ret);
}

StringName func_name__get_string_delimiters;


void call_virtual_func__make_template(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    String args2 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 2)));



    pylanguage->_make_template(args0,args1,args2,r_ret);
}

StringName func_name__make_template;


void call_virtual_func__get_built_in_templates(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));



    pylanguage->_get_built_in_templates(args0,r_ret);
}

StringName func_name__get_built_in_templates;


void call_virtual_func__is_using_templates(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_is_using_templates(r_ret);
}

StringName func_name__is_using_templates;


void call_virtual_func__validate(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    bool args2 = *((bool*)(p_args + 2));
    bool args3 = *((bool*)(p_args + 3));
    bool args4 = *((bool*)(p_args + 4));
    bool args5 = *((bool*)(p_args + 5));



    pylanguage->_validate(args0,args1,args2,args3,args4,args5,r_ret);
}

StringName func_name__validate;


void call_virtual_func__validate_path(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));



    pylanguage->_validate_path(args0,r_ret);
}

StringName func_name__validate_path;


void call_virtual_func__create_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_create_script(r_ret);
}

StringName func_name__create_script;


void call_virtual_func__has_named_classes(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_has_named_classes(r_ret);
}

StringName func_name__has_named_classes;


void call_virtual_func__supports_builtin_mode(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_supports_builtin_mode(r_ret);
}

StringName func_name__supports_builtin_mode;


void call_virtual_func__supports_documentation(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_supports_documentation(r_ret);
}

StringName func_name__supports_documentation;


void call_virtual_func__can_inherit_from_file(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_can_inherit_from_file(r_ret);
}

StringName func_name__can_inherit_from_file;


void call_virtual_func__find_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));



    pylanguage->_find_function(args0,args1,r_ret);
}

StringName func_name__find_function;


void call_virtual_func__make_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    PackedStringArray args2 = PackedStringArray::new_static(const_cast<GDExtensionTypePtr*>((p_args + 2)));



    pylanguage->_make_function(args0,args1,args2,r_ret);
}

StringName func_name__make_function;


void call_virtual_func__open_in_external_editor(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    Script args0 = *((Script*)(p_args + 0));
    int args1 = *((int*)(p_args + 1));
    int args2 = *((int*)(p_args + 2));



    pylanguage->_open_in_external_editor(args0,args1,args2,r_ret);
}

StringName func_name__open_in_external_editor;


void call_virtual_func__overrides_external_editor(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_overrides_external_editor(r_ret);
}

StringName func_name__overrides_external_editor;


void call_virtual_func__complete_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    Object args2 = Object::new_static(const_cast<GDExtensionObjectPtr*>(p_args + 2));



    pylanguage->_complete_code(args0,args1,args2,r_ret);
}

StringName func_name__complete_code;


void call_virtual_func__lookup_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    String args2 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 2)));
    Object args3 = Object::new_static(const_cast<GDExtensionTypePtr*>((p_args + 3)));



    pylanguage->_lookup_code(args0,args1,args2,args3,r_ret);
}

StringName func_name__lookup_code;


void call_virtual_func__auto_indent_code(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    int args1 = *((int*)(p_args + 1));
    int args2 = *((int*)(p_args + 2));



    pylanguage->_auto_indent_code(args0,args1,args2,r_ret);
}

StringName func_name__auto_indent_code;


void call_virtual_func__add_global_constant(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    Variant args1 = Variant::new_static(const_cast<GDExtensionTypePtr*>((p_args + 1)));



    pylanguage->_add_global_constant(args0,args1,r_ret);
}

StringName func_name__add_global_constant;


void call_virtual_func__add_named_global_constant(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    Variant args1 = Variant::new_static(const_cast<GDExtensionTypePtr*>((p_args + 1)));



    pylanguage->_add_named_global_constant(args0,args1,r_ret);
}

StringName func_name__add_named_global_constant;


void call_virtual_func__remove_named_global_constant(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    StringName args0 = StringName::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));



    pylanguage->_remove_named_global_constant(args0,r_ret);
}

StringName func_name__remove_named_global_constant;


void call_virtual_func__thread_enter(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_thread_enter(r_ret);
}

StringName func_name__thread_enter;


void call_virtual_func__thread_exit(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_thread_exit(r_ret);
}

StringName func_name__thread_exit;


void call_virtual_func__debug_get_error(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_debug_get_error(r_ret);
}

StringName func_name__debug_get_error;


void call_virtual_func__debug_get_stack_level_count(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_debug_get_stack_level_count(r_ret);
}

StringName func_name__debug_get_stack_level_count;


void call_virtual_func__debug_get_stack_level_line(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));



    pylanguage->_debug_get_stack_level_line(args0,r_ret);
}

StringName func_name__debug_get_stack_level_line;


void call_virtual_func__debug_get_stack_level_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));



    pylanguage->_debug_get_stack_level_function(args0,r_ret);
}

StringName func_name__debug_get_stack_level_function;


void call_virtual_func__debug_get_stack_level_locals(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));
    int args1 = *((int*)(p_args + 1));
    int args2 = *((int*)(p_args + 2));



    pylanguage->_debug_get_stack_level_locals(args0,args1,args2,r_ret);
}

StringName func_name__debug_get_stack_level_locals;


void call_virtual_func__debug_get_stack_level_members(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));
    int args1 = *((int*)(p_args + 1));
    int args2 = *((int*)(p_args + 2));



    pylanguage->_debug_get_stack_level_members(args0,args1,args2,r_ret);
}

StringName func_name__debug_get_stack_level_members;


void call_virtual_func__debug_get_stack_level_instance(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));

    pylanguage->_debug_get_stack_level_instance(args0, r_ret);
}

StringName func_name__debug_get_stack_level_instance;


void call_virtual_func__debug_get_globals(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));
    int args1 = *((int*)(p_args + 1));



    pylanguage->_debug_get_globals(args0,args1,r_ret);
}

StringName func_name__debug_get_globals;


void call_virtual_func__debug_parse_stack_level_expression(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    int args0 = *((int*)(p_args + 0));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));
    int args2 = *((int*)(p_args + 2));
    int args3 = *((int*)(p_args + 3));



    pylanguage->_debug_parse_stack_level_expression(args0,args1,args2,args3,r_ret);
}

StringName func_name__debug_parse_stack_level_expression;


void call_virtual_func__debug_get_current_stack_info(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_debug_get_current_stack_info(r_ret);
}

StringName func_name__debug_get_current_stack_info;


void call_virtual_func__reload_all_scripts(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_reload_all_scripts(r_ret);
}

StringName func_name__reload_all_scripts;


void call_virtual_func__reload_tool_script(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    Script args0 = *((Script*)(p_args + 0));
    bool args1 = *((bool*)(p_args + 1));



    pylanguage->_reload_tool_script(args0,args1,r_ret);
}

StringName func_name__reload_tool_script;


void call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_recognized_extensions(r_ret);
}

StringName func_name__get_recognized_extensions;


void call_virtual_func__get_public_functions(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_public_functions(r_ret);
}

StringName func_name__get_public_functions;


void call_virtual_func__get_public_constants(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_public_constants(r_ret);
}

StringName func_name__get_public_constants;


void call_virtual_func__get_public_annotations(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_public_annotations(r_ret);
}

StringName func_name__get_public_annotations;


void call_virtual_func__profiling_start(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_profiling_start(r_ret);
}

StringName func_name__profiling_start;


void call_virtual_func__profiling_stop(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_profiling_stop(r_ret);
}

StringName func_name__profiling_stop;


void call_virtual_func__frame(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_frame(r_ret);
}

StringName func_name__frame;


void call_virtual_func__handles_global_class_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));



    pylanguage->_handles_global_class_type(args0,r_ret);
}

StringName func_name__handles_global_class_type;


void call_virtual_func__get_global_class_name(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));



    pylanguage->_get_global_class_name(args0,r_ret);
}

StringName func_name__get_global_class_name;

GDExtensionClassCallVirtual get_virtual_func(void* p_userdata, GDExtensionConstStringNamePtr p_name) {
    StringName name = StringName::new_static(const_cast<GDExtensionTypePtr>(p_name));

    if (string_names_equal(func_name__get_name, name)){
        return call_virtual_func__get_name;
    }

    else if (string_names_equal(func_name__init, name)){
        return call_virtual_func__init;
    }

    else if (string_names_equal(func_name__get_type, name)){
        return call_virtual_func__get_type;
    }

    else if (string_names_equal(func_name__get_extension, name)){
        return call_virtual_func__get_extension;
    }

    else if (string_names_equal(func_name__finish, name)){
        return call_virtual_func__finish;
    }

    else if (string_names_equal(func_name__get_reserved_words, name)){
        return call_virtual_func__get_reserved_words;
    }

    else if (string_names_equal(func_name__is_control_flow_keyword, name)){
        return call_virtual_func__is_control_flow_keyword;
    }

    else if (string_names_equal(func_name__get_comment_delimiters, name)){
        return call_virtual_func__get_comment_delimiters;
    }

    else if (string_names_equal(func_name__get_string_delimiters, name)){
        return call_virtual_func__get_string_delimiters;
    }

    else if (string_names_equal(func_name__make_template, name)){
        return call_virtual_func__make_template;
    }

    else if (string_names_equal(func_name__get_built_in_templates, name)){
        return call_virtual_func__get_built_in_templates;
    }

    else if (string_names_equal(func_name__is_using_templates, name)){
        return call_virtual_func__is_using_templates;
    }

    else if (string_names_equal(func_name__validate, name)){
        return call_virtual_func__validate;
    }

    else if (string_names_equal(func_name__validate_path, name)){
        return call_virtual_func__validate_path;
    }

    else if (string_names_equal(func_name__create_script, name)){
        return call_virtual_func__create_script;
    }

    else if (string_names_equal(func_name__has_named_classes, name)){
        return call_virtual_func__has_named_classes;
    }

    else if (string_names_equal(func_name__supports_builtin_mode, name)){
        return call_virtual_func__supports_builtin_mode;
    }

    else if (string_names_equal(func_name__supports_documentation, name)){
        return call_virtual_func__supports_documentation;
    }

    else if (string_names_equal(func_name__can_inherit_from_file, name)){
        return call_virtual_func__can_inherit_from_file;
    }

    else if (string_names_equal(func_name__find_function, name)){
        return call_virtual_func__find_function;
    }

    else if (string_names_equal(func_name__make_function, name)){
        return call_virtual_func__make_function;
    }

    else if (string_names_equal(func_name__open_in_external_editor, name)){
        return call_virtual_func__open_in_external_editor;
    }

    else if (string_names_equal(func_name__overrides_external_editor, name)){
        return call_virtual_func__overrides_external_editor;
    }

    else if (string_names_equal(func_name__complete_code, name)){
        return call_virtual_func__complete_code;
    }

    else if (string_names_equal(func_name__lookup_code, name)){
        return call_virtual_func__lookup_code;
    }

    else if (string_names_equal(func_name__auto_indent_code, name)){
        return call_virtual_func__auto_indent_code;
    }

    else if (string_names_equal(func_name__add_global_constant, name)){
        return call_virtual_func__add_global_constant;
    }

    else if (string_names_equal(func_name__add_named_global_constant, name)){
        return call_virtual_func__add_named_global_constant;
    }

    else if (string_names_equal(func_name__remove_named_global_constant, name)){
        return call_virtual_func__remove_named_global_constant;
    }

    else if (string_names_equal(func_name__thread_enter, name)){
        return call_virtual_func__thread_enter;
    }

    else if (string_names_equal(func_name__thread_exit, name)){
        return call_virtual_func__thread_exit;
    }

    else if (string_names_equal(func_name__debug_get_error, name)){
        return call_virtual_func__debug_get_error;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_count, name)){
        return call_virtual_func__debug_get_stack_level_count;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_line, name)){
        return call_virtual_func__debug_get_stack_level_line;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_function, name)){
        return call_virtual_func__debug_get_stack_level_function;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_locals, name)){
        return call_virtual_func__debug_get_stack_level_locals;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_members, name)){
        return call_virtual_func__debug_get_stack_level_members;
    }

    else if (string_names_equal(func_name__debug_get_stack_level_instance, name)){
        return call_virtual_func__debug_get_stack_level_instance;
    }

    else if (string_names_equal(func_name__debug_get_globals, name)){
        return call_virtual_func__debug_get_globals;
    }

    else if (string_names_equal(func_name__debug_parse_stack_level_expression, name)){
        return call_virtual_func__debug_parse_stack_level_expression;
    }

    else if (string_names_equal(func_name__debug_get_current_stack_info, name)){
        return call_virtual_func__debug_get_current_stack_info;
    }

    else if (string_names_equal(func_name__reload_all_scripts, name)){
        return call_virtual_func__reload_all_scripts;
    }

    else if (string_names_equal(func_name__reload_tool_script, name)){
        return call_virtual_func__reload_tool_script;
    }

    else if (string_names_equal(func_name__get_recognized_extensions, name)){
        return call_virtual_func__get_recognized_extensions;
    }

    else if (string_names_equal(func_name__get_public_functions, name)){
        return call_virtual_func__get_public_functions;
    }

    else if (string_names_equal(func_name__get_public_constants, name)){
        return call_virtual_func__get_public_constants;
    }

    else if (string_names_equal(func_name__get_public_annotations, name)){
        return call_virtual_func__get_public_annotations;
    }

    else if (string_names_equal(func_name__profiling_start, name)){
        return call_virtual_func__profiling_start;
    }

    else if (string_names_equal(func_name__profiling_stop, name)){
        return call_virtual_func__profiling_stop;
    }

    else if (string_names_equal(func_name__frame, name)){
        return call_virtual_func__frame;
    }

    else if (string_names_equal(func_name__handles_global_class_type, name)){
        return call_virtual_func__handles_global_class_type;
    }

    else if (string_names_equal(func_name__get_global_class_name, name)){
        return call_virtual_func__get_global_class_name;
    }


    assert(false); // There are methods not being handled
    return nullptr;
}


void init_func_names(){
    func_name__get_name = c_string_to_string_name("_get_name");
    func_name__init = c_string_to_string_name("_init");
    func_name__get_type = c_string_to_string_name("_get_type");
    func_name__get_extension = c_string_to_string_name("_get_extension");
    func_name__finish = c_string_to_string_name("_finish");
    func_name__get_reserved_words = c_string_to_string_name("_get_reserved_words");
    func_name__is_control_flow_keyword = c_string_to_string_name("_is_control_flow_keyword");
    func_name__get_comment_delimiters = c_string_to_string_name("_get_comment_delimiters");
    func_name__get_string_delimiters = c_string_to_string_name("_get_string_delimiters");
    func_name__make_template = c_string_to_string_name("_make_template");
    func_name__get_built_in_templates = c_string_to_string_name("_get_built_in_templates");
    func_name__is_using_templates = c_string_to_string_name("_is_using_templates");
    func_name__validate = c_string_to_string_name("_validate");
    func_name__validate_path = c_string_to_string_name("_validate_path");
    func_name__create_script = c_string_to_string_name("_create_script");
    func_name__has_named_classes = c_string_to_string_name("_has_named_classes");
    func_name__supports_builtin_mode = c_string_to_string_name("_supports_builtin_mode");
    func_name__supports_documentation = c_string_to_string_name("_supports_documentation");
    func_name__can_inherit_from_file = c_string_to_string_name("_can_inherit_from_file");
    func_name__find_function = c_string_to_string_name("_find_function");
    func_name__make_function = c_string_to_string_name("_make_function");
    func_name__open_in_external_editor = c_string_to_string_name("_open_in_external_editor");
    func_name__overrides_external_editor = c_string_to_string_name("_overrides_external_editor");
    func_name__complete_code = c_string_to_string_name("_complete_code");
    func_name__lookup_code = c_string_to_string_name("_lookup_code");
    func_name__auto_indent_code = c_string_to_string_name("_auto_indent_code");
    func_name__add_global_constant = c_string_to_string_name("_add_global_constant");
    func_name__add_named_global_constant = c_string_to_string_name("_add_named_global_constant");
    func_name__remove_named_global_constant = c_string_to_string_name("_remove_named_global_constant");
    func_name__thread_enter = c_string_to_string_name("_thread_enter");
    func_name__thread_exit = c_string_to_string_name("_thread_exit");
    func_name__debug_get_error = c_string_to_string_name("_debug_get_error");
    func_name__debug_get_stack_level_count = c_string_to_string_name("_debug_get_stack_level_count");
    func_name__debug_get_stack_level_line = c_string_to_string_name("_debug_get_stack_level_line");
    func_name__debug_get_stack_level_function = c_string_to_string_name("_debug_get_stack_level_function");
    func_name__debug_get_stack_level_locals = c_string_to_string_name("_debug_get_stack_level_locals");
    func_name__debug_get_stack_level_members = c_string_to_string_name("_debug_get_stack_level_members");
    func_name__debug_get_stack_level_instance = c_string_to_string_name("_debug_get_stack_level_instance");
    func_name__debug_get_globals = c_string_to_string_name("_debug_get_globals");
    func_name__debug_parse_stack_level_expression = c_string_to_string_name("_debug_parse_stack_level_expression");
    func_name__debug_get_current_stack_info = c_string_to_string_name("_debug_get_current_stack_info");
    func_name__reload_all_scripts = c_string_to_string_name("_reload_all_scripts");
    func_name__reload_tool_script = c_string_to_string_name("_reload_tool_script");
    func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions");
    func_name__get_public_functions = c_string_to_string_name("_get_public_functions");
    func_name__get_public_constants = c_string_to_string_name("_get_public_constants");
    func_name__get_public_annotations = c_string_to_string_name("_get_public_annotations");
    func_name__profiling_start = c_string_to_string_name("_profiling_start");
    func_name__profiling_stop = c_string_to_string_name("_profiling_stop");
    func_name__frame = c_string_to_string_name("_frame");
    func_name__handles_global_class_type = c_string_to_string_name("_handles_global_class_type");
    func_name__get_global_class_name = c_string_to_string_name("_get_global_class_name");
}

#pragma endregion

void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance){}
void register_class(){
    init_func_names();
    operator_equal_string_name = _interface->variant_get_ptr_operator_evaluator(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    /*
    ctypedef struct GDExtensionClassCreationInfo:
        GDExtensionClassSet set_func;
        GDExtensionClassGet get_func;
        GDExtensionClassGetPropertyList get_property_list_func;
        GDExtensionClassFreePropertyList free_property_list_func;
        GDExtensionClassPropertyCanRevert property_can_revert_func;
        GDExtensionClassPropertyGetRevert property_get_revert_func;
        GDExtensionClassNotification notification_func;
        GDExtensionClassToString to_string_func;
        GDExtensionClassReference reference_func;
        GDExtensionClassUnreference unreference_func;
        GDExtensionClassCreateInstance create_instance_func; # this one is mandatory
        GDExtensionClassFreeInstance free_instance_func; # this one is mandatory
        GDExtensionClassGetVirtual get_virtual_func;
        GDExtensionClassGetRID get_rid_func;
        void *class_userdata;
    */
    creation_info.create_instance_func = create_instance_language;
    creation_info.free_instance_func = free_instance;
    //creation_info.class_userdata = nullptr;
    creation_info.get_virtual_func = get_virtual_func;

    StringName class_name = c_string_to_string_name("PyLanguage");
     StringName parent_class_name = c_string_to_string_name("ScriptLanguageExtension");

    _interface->classdb_register_extension_class(_library, &class_name.godot_owner, &parent_class_name.godot_owner, &creation_info);
}