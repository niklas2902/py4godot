#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include <cassert>
#include "py4godot/script_language/template.h"
#include "py4godot/cppclasses/EditorInterface/EditorInterface.h"
#include "py4godot/cppclasses/Theme/Theme.h"
#include "py4godot/cppclasses/ImageTexture/ImageTexture.h"
#include "py4godot/cppclasses/Image/Image.h"
#include "py4godot/pluginscript_api/api.h"
Theme theme;
std::shared_ptr<ImageTexture> image_texture;

//TODO: generate this
bool theme_has_method(){
    StringName _class_name = c_string_to_string_name("EditorInterface");
    _class_name.shouldBeDeleted = true;

    StringName _method_name = c_string_to_string_name("get_editor_theme");
    _method_name.shouldBeDeleted = true;

    GDExtensionMethodBindPtr method_bind = functions::get_classdb_get_method_bind()(&_class_name.godot_owner,&_method_name.godot_owner, 3846893731);
    return method_bind != nullptr;
}

void PyLanguage::init_theme_icon(){
    if(counter == 1){
        auto instance = EditorInterface::get_instance();
        if(!theme_has_method()){
            return;
        }
        theme = instance ->get_editor_theme();

        image_texture = ImageTexture::constructor();
        auto icon_path = c_string_to_string("addons/py4godot/Python.svg");
        auto icon_image = Image::constructor();
        icon_image->reference();
        icon_image->load(icon_path);
        image_texture = ImageTexture::py_create_from_image(icon_image);

        auto icon_name = c_string_to_string_name("Python");
        auto py_script_icon_name = c_string_to_string_name("PyScriptExtension");
        auto theme_name = c_string_to_string_name("EditorIcons");
        counter ++;
        theme.set_icon(icon_name, theme_name, image_texture.get());
        theme.set_icon(py_script_icon_name, theme_name, image_texture.get());
        icon_image->unreference();

    }
    else{
        counter ++;
    }
}
void PyLanguage::deinit_theme_icon(){
    //theme.unreference();
    //image_texture->unreference();
}
  PyLanguage* PyLanguage::constructor(){
    PyLanguage* class_ = new PyLanguage();

    StringName class_name = c_string_to_string_name("PyLanguage");
    class_name.shouldBeDeleted = true;

    class_->godot_owner = functions::get_classdb_construct_object()(&class_name.godot_owner);
    functions::get_object_set_instance()(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    return class_;
}

  void PyLanguage::_init_values(){
    extension = "py";
    keywords = {"if","elif", "else"};
   }

  void PyLanguage::_new(GDExtensionTypePtr res){}
  void PyLanguage::_get_name(GDExtensionTypePtr res){
    functions::get_string_new_with_utf8_chars()(res, language_name);
  }
  void PyLanguage::_init(GDExtensionTypePtr res){}

  void PyLanguage::_get_type(GDExtensionTypePtr res){
    init_theme_icon();
    print_error("_get_type");
    char* path = "Python";
    c_string_to_string_result(path, (void**)res);
  }

  void PyLanguage::_get_extension(GDExtensionTypePtr res){
    print_error("_get_extension");
    functions::get_string_new_with_utf8_chars()(res, "py");
  }

  void PyLanguage::_finish(GDExtensionTypePtr res){
    print_error("_finish");
  }

  void PyLanguage::_get_reserved_words(GDExtensionTypePtr res){
    print_error("_get_reserved_words");
    auto del = c_string_to_string("del");
    auto nonlocal = c_string_to_string("nonlocal");
    auto yield = c_string_to_string("yield");
    auto finally = c_string_to_string("finally");
    auto for_ = c_string_to_string("for");
    auto  lambda = c_string_to_string("lambda");
    auto return_ = c_string_to_string("return");
    auto try_ = c_string_to_string("try");
    auto assert_ = c_string_to_string("assert");
    auto true_ = c_string_to_string("True");
    auto and_ = c_string_to_string("and");
    auto continue_ = c_string_to_string("continue");
    auto in = c_string_to_string("in");
    auto not_ = c_string_to_string("not");
    auto from_ = c_string_to_string("from");
    auto false_ = c_string_to_string("False");
    auto raise_ = c_string_to_string("raise");
    auto while_ = c_string_to_string("while");
    auto as = c_string_to_string("as");
    auto else_ = c_string_to_string("else");
    auto or_ = c_string_to_string("or");
    auto except = c_string_to_string("except");
    auto with = c_string_to_string("with");
    auto pass = c_string_to_string("pass");
    auto import = c_string_to_string("import");
    auto async = c_string_to_string("async");
    auto break_ = c_string_to_string("break");
    auto elif = c_string_to_string("elif");
    auto global = c_string_to_string("global");
    auto none = c_string_to_string("None");
    auto if_ = c_string_to_string("if");
    auto def = c_string_to_string("def");
    auto class_ = c_string_to_string("class");
    auto is_ = c_string_to_string("is");
    auto await = c_string_to_string("await");


    add_string_to_array(res, del);
    add_string_to_array(res, nonlocal);
    add_string_to_array(res, yield);
    add_string_to_array(res, finally);
    add_string_to_array(res, for_);
    add_string_to_array(res, lambda);
    add_string_to_array(res, return_);
    add_string_to_array(res, try_);
    add_string_to_array(res, assert_);
    add_string_to_array(res, true_);
    add_string_to_array(res, and_);
    add_string_to_array(res, continue_);
    add_string_to_array(res, in);
    add_string_to_array(res, not_);
    add_string_to_array(res, from_);
    add_string_to_array(res, false_);
    add_string_to_array(res, raise_);
    add_string_to_array(res, while_);
    add_string_to_array(res, as);
    add_string_to_array(res, else_);
    add_string_to_array(res, or_);
    add_string_to_array(res,except);
    add_string_to_array(res, with);
    add_string_to_array(res, pass);
    add_string_to_array(res, import);
    add_string_to_array(res, async);
    add_string_to_array(res, break_);
    add_string_to_array(res, elif);
    add_string_to_array(res, global);
    add_string_to_array(res, none);
    add_string_to_array(res, if_);
    add_string_to_array(res, def);
    add_string_to_array(res, class_);
    add_string_to_array(res, is_);
    add_string_to_array(res, await);
  }
  void PyLanguage::_is_control_flow_keyword(String& keyword, GDExtensionTypePtr res){
  print_error("_is_control_flow_keyword");
    const char* py_string = gd_string_to_c_string(&keyword.godot_owner, keyword.length());
    bool is_in_keywords = keywords.find(py_string) != keywords.end();
    *static_cast<bool*>(res) = is_in_keywords;
  }

  void PyLanguage::_get_comment_delimiters(GDExtensionTypePtr res){
    print_error("_get_comment_delimiters");
    auto comment = c_string_to_string("#");
    add_string_to_array(res,comment);
  }

  void PyLanguage::_get_string_delimiters(GDExtensionTypePtr res){
    print_error("_get_string_delimiters");
    auto string_del1 = c_string_to_string("\".*\"");
    auto string_del2 = c_string_to_string("'.*'");
    add_string_to_array(res,string_del1);
    add_string_to_array(res,string_del2);

  }
    void PyLanguage::_get_doc_comment_delimiters(GDExtensionTypePtr res){
    print_error("_get_doc_comment_delimiters");
    auto string_del = c_string_to_string("\"\"\".*\"\"\"");
    auto string_del2 = c_string_to_string("'''.*'''");
    add_string_to_array(res,string_del);
    add_string_to_array(res,string_del2);
  }


  void PyLanguage::_make_template(String& template_, String& class_name, String& base_class_name,GDExtensionTypePtr res){
    print_error("_make_template");

    String class_name_replace = c_string_to_string("{CLASSNAME}");
    String inherits_replace = c_string_to_string("{INHERITS}");
    template_ = template_.replace(class_name_replace, class_name);
    template_ = template_.replace(inherits_replace, base_class_name);
    PyScriptExtension* extension_py = PyScriptExtension::constructor(this);
    extension_py->set_source_code(template_);
    *((void**)res) = extension_py->godot_owner;
  }

  void PyLanguage::_get_built_in_templates(StringName& object, GDExtensionTypePtr res){
    print_error("_get_built_int_templates");
    godot::String object_string = c_string_to_string("Object");
    if(object != object_string){
        return;
    }

    Array templates = Array::new_static(*((void**)res));
    Dictionary my_dict = Dictionary::new0();

    String inherits = c_string_to_string("inherit");
    Variant val = my_dict[inherits];
    String inherits_val = String::new2(object);
    val.init_type(inherits_val);

    String name = c_string_to_string("name");
    Variant val_name = my_dict[name];
    String name_val = c_string_to_string("example template");
    val_name.init_type(name_val);

    String description = c_string_to_string("description");
    Variant val_description = my_dict[description];
    String description_val = c_string_to_string("This is an example template to show how to start");
    val_description.init_type(description_val);


    String content = c_string_to_string("content");
    Variant val_content = my_dict[content];
    String content_val = c_string_to_string(basic_template);
    val_content.init_type(content_val);

    String origin = c_string_to_string("origin");
    Variant val_origin = my_dict[origin];
    int origin_val = 1;
    val_origin.init_type(origin_val);

    String id = c_string_to_string("id");
    Variant val_id = my_dict[id];
    int id_val = 1;
    val_id.init_type(id_val);


    Variant my_variant = Variant(my_dict);
    templates.push_back(my_variant);
    templates.size();
  }

  void PyLanguage::_is_using_templates(GDExtensionTypePtr res){
    print_error("_is_using_templates");
    *((bool*)res) = true;
  }

  void PyLanguage::_validate(String& script, String& path, bool validate_functions, bool validate_errors, bool validate_warnings, bool validate_safe_lines, GDExtensionTypePtr res){
    print_error("_validate");
    GDExtensionVariantPtr varptr;
    String key = c_string_to_string("valid");
    auto key_var = Variant(key);

    bool valid = true;
    GDExtensionVariantPtr value_var = functions::get_dictionary_operator_index()(const_cast<GDExtensionTypePtr>(res), &key_var.native_ptr);
    GDExtensionVariantFromTypeConstructorFunc constructor_func_valid = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL);
    constructor_func_valid(value_var, &valid);
    }

  void PyLanguage::_validate_path(String& path, GDExtensionTypePtr res){
    print_error("_validate_path");
  }

  void PyLanguage::_create_script(GDExtensionTypePtr res){
    print_error("_create_script");
    PyScriptExtension* extension_py = PyScriptExtension::constructor(this);
    *((void**)res) = extension_py->godot_owner;
}

  void PyLanguage::_has_named_classes(GDExtensionTypePtr res){
    print_error("_has_named_classes");
     *static_cast<bool*>(res) = true;
  }

  void PyLanguage::_supports_builtin_mode(GDExtensionTypePtr res){
    print_error("_supports_builtin_mode");
    *((bool*)res) = false;
  }

  void PyLanguage::_supports_documentation(GDExtensionTypePtr res){
  print_error("_supports_documentation");
  *((bool*)res) = false;
  }

  void PyLanguage::_can_inherit_from_file(GDExtensionTypePtr res){
    print_error("_can_inherit_from_file");
  };

  void PyLanguage::_preferred_file_name_casing(GDExtensionTypePtr res) {
      print_error("_preferred_file_name_casing");
      *((long long*)res) = 0;
  };

  void PyLanguage::_can_make_function(GDExtensionTypePtr res) {
      print_error("_can_inherit_from_file");
      *((bool*)res) = true;
  };

  void PyLanguage::_find_function(String& class_name, String& function_name, GDExtensionTypePtr res){
    print_error("_find_function");
    *((long*) res) = -1;
  }

  void PyLanguage::_make_function(String& class_name, String& function_name, PackedStringArray& function_args, GDExtensionTypePtr res){
    print_error("_make_function");

    char* c_function_name;
    gd_string_to_c_string(function_name, function_name.length(), &c_function_name);
    std::string function_name_string{c_function_name};
    std::string args{};
    for(int i = 0; i< get_packed_string_array_size(function_args.godot_owner); i++){
        godot::String arg_string = get_packed_string_array_element(function_args.godot_owner, i);
        char* c_arg_string;
        gd_string_to_c_string(&arg_string.godot_owner, arg_string.length(), &c_arg_string);
        std::string komma = i == get_packed_string_array_size(function_args.godot_owner) - 1?std::string{}: std::string{", "};
        args += std::string{c_arg_string} + komma;
        free(c_arg_string);
    }
    std::string komma = get_packed_string_array_size(function_args.godot_owner) > 0? std::string{", "}:std::string{};
    std::string result{"    def "+ function_name_string + "(self"+ komma + args + "):\n        pass"};
    c_string_to_string_result(result.c_str(), (void**)res);
    free(c_function_name);
  }

  void PyLanguage::_open_in_external_editor(Script& script, int line, int column, GDExtensionTypePtr res){
    print_error("_open_in_external_editor");
  }

  void PyLanguage::_overrides_external_editor(GDExtensionTypePtr res){
    print_error("_overrides_external_editor");
    *static_cast<bool*>(res) = false;
  }

  void PyLanguage::_complete_code(String& code, String& path, Object& owner, GDExtensionTypePtr res){
    print_error("_complete_code");
  }

  void PyLanguage::_lookup_code(String& code, String& symbol, String& path, Object& owner, GDExtensionTypePtr res){
    print_error("_lookup_code");
  }

  void PyLanguage::_auto_indent_code(String& code, int from_line, int to_line, GDExtensionTypePtr res){
    print_error("_auto_indent_code");
  }

  void PyLanguage::_add_global_constant(StringName& name, Variant& value, GDExtensionTypePtr res){
    print_error("_add_global_constant");
  }

  void PyLanguage::_add_named_global_constant(StringName& name, Variant& value, GDExtensionTypePtr res){
    print_error("_add_named_global_constant");
  }

  void PyLanguage::_remove_named_global_constant(StringName& name, GDExtensionTypePtr res){
    print_error("_remove_named_global_constnat");
  }


  void PyLanguage::_thread_enter(GDExtensionTypePtr res){
    print_error("_thread_enter");
  }

  void PyLanguage::_thread_exit(GDExtensionTypePtr res){
    print_error("_thread_exit");
  }

  void PyLanguage::_debug_get_error(GDExtensionTypePtr res){
    print_error("_debug_get_error");
  }

  void PyLanguage::_debug_get_stack_level_count(GDExtensionTypePtr res){
    print_error("_debug_get_stack_lebel_count");
  }

  void PyLanguage::_debug_get_stack_level_line(int level, GDExtensionTypePtr res){
    print_error("_debug_get_stack_level_line");
  }

  void PyLanguage::_debug_get_stack_level_function(int level, GDExtensionTypePtr res){
    print_error("_debug_get_stack_level_function");
  }

  void PyLanguage::_debug_get_stack_level_locals(int level, int max_subitems, int max_depth, GDExtensionTypePtr res){
    print_error("_debug_get_stack_level_locals");
  }

  void PyLanguage::_debug_get_stack_level_members(int level, int max_subitems, int max_depth, GDExtensionTypePtr res){
    print_error("_debug_get_stack_level_members");
  }

  void PyLanguage::_debug_get_globals(int max_subitems, int max_depth, GDExtensionTypePtr res){
    print_error("_debug_get_globals");
  }

  void PyLanguage::_debug_parse_stack_level_expression(int level, String& expression, int max_subitems, int max_depth, GDExtensionTypePtr res){
    print_error("_debug_parse_stack_level_expression");
  }

  void PyLanguage::_debug_get_current_stack_info(GDExtensionTypePtr res){
    print_error("_debug_get_current_stack_info");
  }

  void PyLanguage::_reload_all_scripts(GDExtensionTypePtr res){
    print_error("_reload_all_scripts");
    assert(false);
  }

  void PyLanguage::_reload_tool_script(Script& script, bool soft_reload, GDExtensionTypePtr res){}

  void  PyLanguage::_get_recognized_extensions(GDExtensionTypePtr res){
    print_error("_get_recognized_extensions");
      auto py = c_string_to_string("py");
      auto pyw = c_string_to_string("pyw");
      auto pyi = c_string_to_string("pyi");
    add_string_to_array(res, py);
    add_string_to_array(res, pyw);
    add_string_to_array(res, pyi);
  }

  void PyLanguage::_get_public_functions(GDExtensionTypePtr res){
    print_error("_get_public_functions");
  }

  void PyLanguage::_get_public_constants(GDExtensionTypePtr res){
    print_error("_get_public_constants");
  }

  void PyLanguage::_get_public_annotations(GDExtensionTypePtr res){
     print_error("_get_public_annotations");
  }

  void PyLanguage::_profiling_start(GDExtensionTypePtr res){
    print_error("_profiling_start");
  }

  void PyLanguage::_profiling_stop(GDExtensionTypePtr res){
    print_error("_profiling_stop");
  }


  void PyLanguage::_frame(GDExtensionTypePtr res){
    print_error("_frame");
  }

  void PyLanguage::_handles_global_class_type(String& type, GDExtensionTypePtr res){
    print_error("_handles_global_class_type");
  }

  void PyLanguage::_get_global_class_name(String& path, GDExtensionTypePtr res){
    print_error("_get_global_class_name");
    void* _args[1];
    GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY, 0);
    constructor(res,_args);
  }


  void PyLanguage::_debug_get_stack_level_instance(int val, GDExtensionTypePtr res){
    print_error("_debug_get_stack_level_instance");
  }

  GDExtensionPtrOperatorEvaluator operator_equal_string_name;

bool string_names_equal(StringName& left, StringName& right){
    print_error("PyLanguage_string_names_equal");
    uint8_t ret;
    operator_equal_string_name(&left.godot_owner, &right.godot_owner, &ret);
    return ret != 0;
}

void* create_instance_language(void* userdata){
    StringName class_name = c_string_to_string_name("ScriptLanguageExtension");
    auto gdnative_object = functions::get_classdb_construct_object()(&class_name.godot_owner);
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
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



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


void call_virtual_func__get_doc_comment_delimiters(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_get_doc_comment_delimiters(r_ret);
}

StringName func_name__get_doc_comment_delimiters;


void call_virtual_func__make_template(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    String args1 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[1])));
    String args2 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[2])));



    pylanguage->_make_template(args0,args1,args2,r_ret);
}

StringName func_name__make_template;


void call_virtual_func__get_built_in_templates(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    StringName args0 = StringName::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



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

void call_virtual_func__can_make_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);



    pylanguage->_can_make_function(r_ret);
}

StringName func_name__can_make_function;

void call_virtual_func__preferred_file_name_casing(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    pylanguage->_preferred_file_name_casing(r_ret);
}

StringName func_name__preferred_file_name_casing;



void call_virtual_func__find_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 0)));
    String args1 = String::new_static(const_cast<GDExtensionStringPtr*>((p_args + 1)));



    pylanguage->_find_function(args0,args1,r_ret);
}

StringName func_name__find_function;


void call_virtual_func__make_function(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyLanguage* pylanguage = static_cast<PyLanguage*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    String args1 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[1])));
    PackedStringArray args2 = PackedStringArray::new_static(const_cast<GDExtensionTypePtr>(p_args[2]));



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

GDExtensionClassCallVirtual get_virtual(void *p_userdata, GDExtensionConstStringNamePtr p_name) {
    LOCK(mtx);

    StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);

    String name_string = String::new2(name);

    char* res_string;
    gd_string_to_c_string(name_string, name_string.length(), &res_string);

    print_error("called function:");
    print_error(res_string);
    delete res_string;

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

    else if (string_names_equal(func_name__get_doc_comment_delimiters, name)){
        return call_virtual_func__get_doc_comment_delimiters;
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

    else if (string_names_equal(func_name__can_make_function, name)) {
        return call_virtual_func__can_make_function;
    }

    else if (string_names_equal(func_name__preferred_file_name_casing, name)) {
        return call_virtual_func__preferred_file_name_casing;
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

void deinit_func_names(){
      func_name__get_name=StringName::new_static(nullptr);
      func_name__init=StringName::new_static(nullptr);
      func_name__get_type=StringName::new_static(nullptr);
      func_name__get_extension=StringName::new_static(nullptr);
      func_name__finish=StringName::new_static(nullptr);
      func_name__get_reserved_words=StringName::new_static(nullptr);
      func_name__is_control_flow_keyword=StringName::new_static(nullptr);
      func_name__get_comment_delimiters=StringName::new_static(nullptr);
      func_name__get_doc_comment_delimiters=StringName::new_static(nullptr);
      func_name__get_string_delimiters=StringName::new_static(nullptr);
      func_name__make_template=StringName::new_static(nullptr);
      func_name__get_built_in_templates=StringName::new_static(nullptr);
      func_name__is_using_templates=StringName::new_static(nullptr);
      func_name__validate=StringName::new_static(nullptr);
      func_name__validate_path=StringName::new_static(nullptr);
      func_name__create_script=StringName::new_static(nullptr);
      func_name__has_named_classes=StringName::new_static(nullptr);
      func_name__supports_builtin_mode=StringName::new_static(nullptr);
      func_name__supports_documentation=StringName::new_static(nullptr);
      func_name__can_inherit_from_file=StringName::new_static(nullptr);
      func_name__find_function=StringName::new_static(nullptr);
      func_name__make_function=StringName::new_static(nullptr);
      func_name__can_make_function=StringName::new_static(nullptr);
      func_name__open_in_external_editor=StringName::new_static(nullptr);
      func_name__overrides_external_editor=StringName::new_static(nullptr);
      func_name__preferred_file_name_casing=StringName::new_static(nullptr);
      func_name__complete_code=StringName::new_static(nullptr);
      func_name__lookup_code=StringName::new_static(nullptr);
      func_name__auto_indent_code=StringName::new_static(nullptr);
      func_name__add_global_constant=StringName::new_static(nullptr);
      func_name__add_named_global_constant=StringName::new_static(nullptr);
      func_name__remove_named_global_constant=StringName::new_static(nullptr);
      func_name__thread_enter=StringName::new_static(nullptr);
      func_name__thread_exit=StringName::new_static(nullptr);
      func_name__debug_get_error=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_count=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_line=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_function=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_locals=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_members=StringName::new_static(nullptr);
      func_name__debug_get_stack_level_instance=StringName::new_static(nullptr);
      func_name__debug_get_globals=StringName::new_static(nullptr);
      func_name__debug_parse_stack_level_expression=StringName::new_static(nullptr);
      func_name__debug_get_current_stack_info=StringName::new_static(nullptr);
      func_name__reload_all_scripts=StringName::new_static(nullptr);
      func_name__reload_tool_script=StringName::new_static(nullptr);
      func_name__get_recognized_extensions=StringName::new_static(nullptr);
      func_name__get_public_functions=StringName::new_static(nullptr);
      func_name__get_public_constants=StringName::new_static(nullptr);
      func_name__get_public_annotations=StringName::new_static(nullptr);
      func_name__profiling_start=StringName::new_static(nullptr);
      func_name__profiling_stop=StringName::new_static(nullptr);
      func_name__frame=StringName::new_static(nullptr);
      func_name__handles_global_class_type=StringName::new_static(nullptr);
      func_name__get_global_class_name=StringName::new_static(nullptr);
}


void init_func_names(){
   func_name__get_name = c_string_to_string_name("_get_name");
   func_name__get_name.shouldBeDeleted=true;
   func_name__init = c_string_to_string_name("_init");
   func_name__init.shouldBeDeleted=true;
   func_name__get_type = c_string_to_string_name("_get_type");
   func_name__get_type.shouldBeDeleted=true;
   func_name__get_extension = c_string_to_string_name("_get_extension");
   func_name__get_extension.shouldBeDeleted=true;
   func_name__finish = c_string_to_string_name("_finish");
   func_name__finish.shouldBeDeleted=true;
   func_name__get_reserved_words = c_string_to_string_name("_get_reserved_words");
   func_name__get_reserved_words.shouldBeDeleted=true;
   func_name__is_control_flow_keyword = c_string_to_string_name("_is_control_flow_keyword");
   func_name__is_control_flow_keyword.shouldBeDeleted=true;
   func_name__get_comment_delimiters = c_string_to_string_name("_get_comment_delimiters");
   func_name__get_comment_delimiters.shouldBeDeleted=true;
   func_name__get_doc_comment_delimiters = c_string_to_string_name("_get_doc_comment_delimiters");
   func_name__get_doc_comment_delimiters.shouldBeDeleted=true;
   func_name__get_string_delimiters = c_string_to_string_name("_get_string_delimiters");
   func_name__get_string_delimiters.shouldBeDeleted=true;
   func_name__make_template = c_string_to_string_name("_make_template");
   func_name__make_template.shouldBeDeleted=true;
   func_name__get_built_in_templates = c_string_to_string_name("_get_built_in_templates");
   func_name__get_built_in_templates.shouldBeDeleted=true;
   func_name__is_using_templates = c_string_to_string_name("_is_using_templates");
   func_name__is_using_templates.shouldBeDeleted=true;
   func_name__validate = c_string_to_string_name("_validate");
   func_name__validate.shouldBeDeleted=true;
   func_name__validate_path = c_string_to_string_name("_validate_path");
   func_name__validate_path.shouldBeDeleted=true;
   func_name__create_script = c_string_to_string_name("_create_script");
   func_name__create_script.shouldBeDeleted=true;
   func_name__has_named_classes = c_string_to_string_name("_has_named_classes");
   func_name__has_named_classes.shouldBeDeleted=true;
   func_name__supports_builtin_mode = c_string_to_string_name("_supports_builtin_mode");
   func_name__supports_builtin_mode.shouldBeDeleted=true;
   func_name__supports_documentation = c_string_to_string_name("_supports_documentation");
   func_name__supports_documentation.shouldBeDeleted=true;
   func_name__can_inherit_from_file = c_string_to_string_name("_can_inherit_from_file");
   func_name__can_inherit_from_file.shouldBeDeleted=true;
   func_name__find_function = c_string_to_string_name("_find_function");
   func_name__find_function.shouldBeDeleted=true;
   func_name__make_function = c_string_to_string_name("_make_function");
   func_name__make_function.shouldBeDeleted=true;
   func_name__can_make_function = c_string_to_string_name("_can_make_function");
   func_name__can_make_function.shouldBeDeleted=true;
   func_name__open_in_external_editor = c_string_to_string_name("_open_in_external_editor");
   func_name__open_in_external_editor.shouldBeDeleted=true;
   func_name__overrides_external_editor = c_string_to_string_name("_overrides_external_editor");
   func_name__overrides_external_editor.shouldBeDeleted=true;
   func_name__preferred_file_name_casing = c_string_to_string_name("_preferred_file_name_casing");
   func_name__preferred_file_name_casing.shouldBeDeleted=true;
   func_name__complete_code = c_string_to_string_name("_complete_code");
   func_name__complete_code.shouldBeDeleted=true;
   func_name__lookup_code = c_string_to_string_name("_lookup_code");
   func_name__lookup_code.shouldBeDeleted=true;
   func_name__auto_indent_code = c_string_to_string_name("_auto_indent_code");
   func_name__auto_indent_code.shouldBeDeleted=true;
   func_name__add_global_constant = c_string_to_string_name("_add_global_constant");
   func_name__add_global_constant.shouldBeDeleted=true;
   func_name__add_named_global_constant = c_string_to_string_name("_add_named_global_constant");
   func_name__add_named_global_constant.shouldBeDeleted=true;
   func_name__remove_named_global_constant = c_string_to_string_name("_remove_named_global_constant");
   func_name__remove_named_global_constant.shouldBeDeleted=true;
   func_name__thread_enter = c_string_to_string_name("_thread_enter");
   func_name__thread_enter.shouldBeDeleted=true;
   func_name__thread_exit = c_string_to_string_name("_thread_exit");
   func_name__thread_exit.shouldBeDeleted=true;
   func_name__debug_get_error = c_string_to_string_name("_debug_get_error");
   func_name__debug_get_error.shouldBeDeleted=true;
   func_name__debug_get_stack_level_count = c_string_to_string_name("_debug_get_stack_level_count");
   func_name__debug_get_stack_level_count.shouldBeDeleted=true;
   func_name__debug_get_stack_level_line = c_string_to_string_name("_debug_get_stack_level_line");
   func_name__debug_get_stack_level_line.shouldBeDeleted=true;
   func_name__debug_get_stack_level_function = c_string_to_string_name("_debug_get_stack_level_function");
   func_name__debug_get_stack_level_function.shouldBeDeleted=true;
   func_name__debug_get_stack_level_locals = c_string_to_string_name("_debug_get_stack_level_locals");
   func_name__debug_get_stack_level_locals.shouldBeDeleted=true;
   func_name__debug_get_stack_level_members = c_string_to_string_name("_debug_get_stack_level_members");
   func_name__debug_get_stack_level_members.shouldBeDeleted=true;
   func_name__debug_get_stack_level_instance = c_string_to_string_name("_debug_get_stack_level_instance");
   func_name__debug_get_stack_level_instance.shouldBeDeleted=true;
   func_name__debug_get_globals = c_string_to_string_name("_debug_get_globals");
   func_name__debug_get_globals.shouldBeDeleted=true;
   func_name__debug_parse_stack_level_expression = c_string_to_string_name("_debug_parse_stack_level_expression");
   func_name__debug_parse_stack_level_expression.shouldBeDeleted=true;
   func_name__debug_get_current_stack_info = c_string_to_string_name("_debug_get_current_stack_info");
   func_name__debug_get_current_stack_info.shouldBeDeleted=true;
   func_name__reload_all_scripts = c_string_to_string_name("_reload_all_scripts");
   func_name__reload_all_scripts.shouldBeDeleted=true;
   func_name__reload_tool_script = c_string_to_string_name("_reload_tool_script");
   func_name__reload_tool_script.shouldBeDeleted=true;
   func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions");
   func_name__get_recognized_extensions.shouldBeDeleted=true;
   func_name__get_public_functions = c_string_to_string_name("_get_public_functions");
   func_name__get_public_functions.shouldBeDeleted=true;
   func_name__get_public_constants = c_string_to_string_name("_get_public_constants");
   func_name__get_public_constants.shouldBeDeleted=true;
   func_name__get_public_annotations = c_string_to_string_name("_get_public_annotations");
   func_name__get_public_annotations.shouldBeDeleted=true;
   func_name__profiling_start = c_string_to_string_name("_profiling_start");
   func_name__profiling_start.shouldBeDeleted=true;
   func_name__profiling_stop = c_string_to_string_name("_profiling_stop");
   func_name__profiling_stop.shouldBeDeleted=true;
   func_name__frame = c_string_to_string_name("_frame");
   func_name__frame.shouldBeDeleted=true;
   func_name__handles_global_class_type = c_string_to_string_name("_handles_global_class_type");
   func_name__handles_global_class_type.shouldBeDeleted=true;
   func_name__get_global_class_name = c_string_to_string_name("_get_global_class_name");
   func_name__get_global_class_name.shouldBeDeleted=true;
}

#pragma endregion
void free_instance(void *p_userdata, GDExtensionClassInstancePtr p_instance){
    assert(false);
    //functions::get_object_destroy()(p_instance);
}
void register_class(){
    GDExtensionClassCreationInfo* creation_info = new GDExtensionClassCreationInfo{};
    init_func_names();
    operator_equal_string_name = functions::get_variant_get_ptr_operator_evaluator()(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_language;
    creation_info->free_instance_func = free_instance;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = get_virtual;

    StringName class_name_lang = c_string_to_string_name("PyLanguage");
    class_name_lang.shouldBeDeleted = true;
    StringName parent_class_name = c_string_to_string_name("ScriptLanguageExtension");
    parent_class_name.shouldBeDeleted=true;

    functions::get_classdb_register_extension_class()(_library, &class_name_lang.godot_owner, &parent_class_name.godot_owner, creation_info);
}