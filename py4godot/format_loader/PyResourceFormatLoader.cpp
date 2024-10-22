#include "py4godot/format_loader/PyResourceFormatLoader.h"
#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/cppclasses/FileAccess/FileAccess.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include <cassert>

GDExtensionPtrOperatorEvaluator operator_equal_string_name_loader;
std::int64_t PyResourceFormatLoader::id_counter{1000};
bool string_names_equal_loader(StringName& left, StringName& right){
    print_error("string_names_equal_loader");
    uint8_t ret;
    operator_equal_string_name_loader(&left.godot_owner, &right.godot_owner, &ret);
    return ret != 0;
}
  PyResourceFormatLoader* PyResourceFormatLoader::constructor(PyLanguage* language){
    print_error("constructor");
    PyResourceFormatLoader* class_ = new PyResourceFormatLoader();

    StringName class_name = c_string_to_string_name("PyResourceFormatLoader");
    class_name.shouldBeDeleted = true;
    class_->godot_owner = functions::get_classdb_construct_object()(&class_name.godot_owner);
    functions::get_object_set_instance()(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    class_->lang = language;
    return class_;
}

void* create_instance_loader(void* userdata){
    print_error("create_instance_loader");
    StringName class_name = c_string_to_string_name("ResourceFormatLoader");
    class_name.shouldBeDeleted = false;
    auto gdnative_object = functions::get_classdb_construct_object()(&class_name.godot_owner);
    return gdnative_object;
}
void free_instance_loader(void *p_userdata, GDExtensionClassInstancePtr p_instance){
    //assert(false);
    //functions::get_object_destroy()(p_instance);
}

void PyResourceFormatLoader::_init_values(){}

void PyResourceFormatLoader::_get_recognized_extensions(GDExtensionTypePtr res){
        print_error("_get_recognized_extensions");
    auto py = c_string_to_string("py");
    add_string_to_array(res, py);
}
void PyResourceFormatLoader::_recognize_path( String& path, StringName& type, GDExtensionTypePtr res){
        print_error("_recognize_path");
    String py = c_string_to_string("py");
    String pyw = c_string_to_string("pyw");
    String pyi = c_string_to_string("pyi");
    bool can_be_loaded =  path.ends_with(py) || path.ends_with(pyw) || path.ends_with(pyi);
    *reinterpret_cast<void**>(res) = reinterpret_cast<void*>(can_be_loaded);
}
void PyResourceFormatLoader::_handles_type( StringName& type, GDExtensionTypePtr res){
        print_error("handles_type");
    String type_ = c_string_to_string("Script");
  bool handles_type = type.ends_with(type_);
  *((GDExtensionTypePtr*) res) =  (void*)handles_type;
}
void PyResourceFormatLoader::_get_resource_type( String& path, GDExtensionTypePtr res){
    print_error("_get_resource_type");
    functions::get_string_new_with_utf8_chars()(res, "PyScriptExtension");
}
void PyResourceFormatLoader::_get_resource_script_class( String& path, GDExtensionTypePtr res)
{
    print_error("_get_resource_script_class");
}
void PyResourceFormatLoader::_get_resource_uid( String& path, GDExtensionTypePtr res){
    print_error("get_resource_id");
    *((std::int64_t*)res) = -1;
    String py = c_string_to_string("py");
    String pyw = c_string_to_string("pyw");
    return; //TODO: Is there a way to be more efficient
    char* res_string;
    if (!path.ends_with(py) && !path.ends_with(pyw)){
        *((std::int64_t*)res) = -1;

        return;
    }
    gd_string_to_c_string(path, path.length(), &res_string);
    std::string str_res_string = std::string{res_string};
    if(path_to_id.find(str_res_string) == path_to_id.end()){
        PyResourceFormatLoader::id_counter ++;
        path_to_id[str_res_string] = PyResourceFormatLoader::id_counter;
    }
    *((std::int64_t*)res) = path_to_id[str_res_string];

}
void PyResourceFormatLoader::_get_dependencies( String& path, bool add_types, GDExtensionTypePtr res){
    print_error("_get_dependencies");
}
void PyResourceFormatLoader::_rename_dependencies( String& path, Dictionary& renames, GDExtensionTypePtr res){
    print_error("_rename_dependencies");
}
void PyResourceFormatLoader::_exists( String& path, GDExtensionTypePtr res){
    *reinterpret_cast<bool*>(res) = true;
}
void PyResourceFormatLoader::_get_classes_used( String& path, GDExtensionTypePtr res){
    print_error("_get_classes_used");
}
void PyResourceFormatLoader::_load( String& path, String& original_path, bool use_sub_threads, int cache_mode, GDExtensionTypePtr res){
    print_error("_load");
    GDExtensionVariantFromTypeConstructorFunc constructor_func;
    FileAccess file;
    {
        file = FileAccess::open(path, 1/*Read*/);
        if(! file.godot_owner){
            return;
        }
    }

    auto source_code = file.get_as_text(false);
    source_code.shouldBeDeleted = false;
    functions::get_object_destroy()(file.godot_owner);

    char* c_path;
    gd_string_to_c_string(&path.godot_owner, path.length(), &c_path);

    PyScriptExtension* script_extension = nullptr;
    auto string_path = std::string{c_path};
    if(path_to_script_extension.find(string_path) == path_to_script_extension.end()){
        script_extension = PyScriptExtension::constructor(lang);
        path_to_script_extension[string_path] = script_extension;

    }
    else{
        path_to_script_extension[string_path]->_set_source_code_internal(source_code);
        constructor_func = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT);
        constructor_func(res,&path_to_script_extension[string_path]->godot_owner);
        return;
    }
    script_extension->set_path(path);
    script_extension ->_set_source_code_internal(source_code);

    constructor_func = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT);
    constructor_func(res,&script_extension->godot_owner);
    //free(c_path);
}

#pragma region: generated
namespace loader{
void call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    pylanguage->_get_recognized_extensions(r_ret);
}

StringName func_name__get_recognized_extensions;


void call_virtual_func__recognize_path(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    StringName args1 = StringName::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[1])));
    pylanguage->_recognize_path(args0,args1,r_ret);
}

StringName func_name__recognize_path;


void call_virtual_func__handles_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    StringName args0 = StringName::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_handles_type(args0,r_ret);
}

StringName func_name__handles_type;


void call_virtual_func__get_resource_type(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_get_resource_type(args0,r_ret);
}

StringName func_name__get_resource_type;


void call_virtual_func__get_resource_script_class(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_get_resource_script_class(args0,r_ret);
}

StringName func_name__get_resource_script_class;


void call_virtual_func__get_resource_uid(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_get_resource_uid(args0,r_ret);
}

StringName func_name__get_resource_uid;


void call_virtual_func__get_dependencies(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    bool args1 = *((bool*)(p_args + 1));



    pylanguage->_get_dependencies(args0,args1,r_ret);
}

StringName func_name__get_dependencies;


void call_virtual_func__rename_dependencies(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    Dictionary args1 = Dictionary::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[1])));



    pylanguage->_rename_dependencies(args0,args1,r_ret);
}

StringName func_name__rename_dependencies;


void call_virtual_func__exists(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_exists(args0,r_ret);
}

StringName func_name__exists;


void call_virtual_func__get_classes_used(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));



    pylanguage->_get_classes_used(args0,r_ret);
}

StringName func_name__get_classes_used;


void call_virtual_func__load(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
    PyResourceFormatLoader* pylanguage = static_cast<PyResourceFormatLoader*> (p_instance);
    String args0 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[0])));
    String args1 = String::new_static(*((void**)const_cast<GDExtensionStringPtr>(p_args[1])));
    bool args2 = *((bool*)(p_args + 2));
    int args3 = *((int*)(p_args + 3));



    pylanguage->_load(args0,args1,args2,args3,r_ret);
}

StringName func_name__load;

}
GDExtensionClassCallVirtual get_virtual_loader(void *p_userdata, GDExtensionConstStringNamePtr p_name) {
    LOCK(mtx);

    StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);
    auto length = name.length();

        String name_string = String::new2(name);

        char* res_string;
        gd_string_to_c_string(name_string, name_string.length(), &res_string);

        print_error("called function loader:");
        print_error(res_string);


    if (string_names_equal_loader(loader::func_name__get_recognized_extensions, name)){
        return loader::call_virtual_func__get_recognized_extensions;
    }

    else if (string_names_equal_loader(loader::func_name__recognize_path, name)){
        return loader::call_virtual_func__recognize_path;
    }

    else if (string_names_equal_loader(loader::func_name__handles_type, name)){
        return loader::call_virtual_func__handles_type;
    }

    else if (string_names_equal_loader(loader::func_name__get_resource_type, name)){
        return loader::call_virtual_func__get_resource_type;
    }

    else if (string_names_equal_loader(loader::func_name__get_resource_script_class, name)){
        return loader::call_virtual_func__get_resource_script_class;
    }

    else if (string_names_equal_loader(loader::func_name__get_resource_uid, name)){
        return loader::call_virtual_func__get_resource_uid;
    }

    else if (string_names_equal_loader(loader::func_name__get_dependencies, name)){
        return loader::call_virtual_func__get_dependencies;
    }

    else if (string_names_equal_loader(loader::func_name__rename_dependencies, name)){
        return loader::call_virtual_func__rename_dependencies;
    }

    else if (string_names_equal_loader(loader::func_name__exists, name)){
        return loader::call_virtual_func__exists;
    }

    else if (string_names_equal_loader(loader::func_name__get_classes_used, name)){
        return loader::call_virtual_func__get_classes_used;
    }

    else if (string_names_equal_loader(loader::func_name__load, name)){
        return loader::call_virtual_func__load;
    }
    assert(false); // There are methods not being handled
    return nullptr;
}
#pragma endregion
void init_func_names_loader(){

    loader::func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions");
    loader::func_name__recognize_path = c_string_to_string_name("_recognize_path");
    loader::func_name__handles_type = c_string_to_string_name("_handles_type");
    loader::func_name__get_resource_type = c_string_to_string_name("_get_resource_type");
    loader::func_name__get_resource_script_class = c_string_to_string_name("_get_resource_script_class");
    loader::func_name__get_resource_uid = c_string_to_string_name("_get_resource_uid");
    loader::func_name__get_dependencies = c_string_to_string_name("_get_dependencies");
    loader::func_name__rename_dependencies = c_string_to_string_name("_rename_dependencies");
    loader::func_name__exists = c_string_to_string_name("_exists");
    loader::func_name__get_classes_used = c_string_to_string_name("_get_classes_used");
    loader::func_name__load = c_string_to_string_name("_load");
}

void register_class_loader(){
    init_func_names_loader();
    operator_equal_string_name_loader = functions::get_variant_get_ptr_operator_evaluator()(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);

    auto creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_loader;
    creation_info->free_instance_func = free_instance_loader;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = get_virtual_loader;

    StringName class_name = c_string_to_string_name("PyResourceFormatLoader");
    StringName parent_class_name = c_string_to_string_name("ResourceFormatLoader");
    class_name.shouldBeDeleted = false;
    parent_class_name.shouldBeDeleted = false;


    functions::get_classdb_register_extension_class()(_library, &class_name.godot_owner, &parent_class_name.godot_owner, creation_info);
}