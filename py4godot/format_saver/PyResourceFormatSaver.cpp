#include "py4godot/format_saver/PyResourceFormatSaver.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include "py4godot/cppclasses/FileAccess/FileAccess.h"
#include <cassert>

 GDExtensionPtrOperatorEvaluator operator_equal_string_name_save;

bool string_names_equal_save(StringName left, StringName right){
    uint8_t ret;
    operator_equal_string_name_save(&left.godot_owner, &right.godot_owner, &ret);
    return ret != 0;
}
  PyResourceFormatSaver* PyResourceFormatSaver::constructor(){
    PyResourceFormatSaver* class_ = new PyResourceFormatSaver();

    StringName class_name = c_string_to_string_name("PyResourceFormatSaver");

    class_->godot_owner = functions::get_classdb_construct_object()(&class_name.godot_owner);
    functions::get_object_set_instance()(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    return class_;
}

void* create_instance_saver(void* userdata){
    StringName class_name = c_string_to_string_name("ResourceFormatSaver");
    auto gdnative_object = functions::get_classdb_construct_object()(&class_name.godot_owner);
    return gdnative_object;
}
void free_instance_saver(void *p_userdata, GDExtensionClassInstancePtr p_instance){}

void PyResourceFormatSaver::_init_values(){}

  void PyResourceFormatSaver::_save( Resource& resource, String& path, int flags, GDExtensionTypePtr res){
    Script script = Script::new_static(resource.godot_owner);

    auto source = script.get_source_code();

    Error error;
    FileAccess file = FileAccess::open(path, 2/*WRITE*/);
    file.store_string(source);
    file.flush();
    functions::get_object_destroy()(file.godot_owner);

    *((GDExtensionTypePtr*) res) = 0/*OK*/;
    }
  void PyResourceFormatSaver::_set_uid( String& path, int uid, GDExtensionTypePtr res){}
  void PyResourceFormatSaver::_recognize( Resource& resource, GDExtensionTypePtr res){
      *((bool*)res) =  resource.godot_owner != nullptr;
    }
  void PyResourceFormatSaver::_get_recognized_extensions( Resource& resource, GDExtensionTypePtr res){
    add_string_to_array(res, c_string_to_string("py"));
    add_string_to_array(res, c_string_to_string("pyw"));
    add_string_to_array(res, c_string_to_string("pyi"));
  }
  void PyResourceFormatSaver::_recognize_path( Resource& resource, String& path, GDExtensionTypePtr res){}


#pragma region: saver
namespace saver{
    static void call_virtual_func__save(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
        PyResourceFormatSaver* pylanguage = static_cast<PyResourceFormatSaver*> (p_instance);
        Resource args0 = Resource::new_static(functions::get_ref_get_object()(p_args[0]));
        String args1 = String::new_static((*((void**)const_cast<GDExtensionStringPtr>(p_args[1]))));
        int args2 = *((int*)(p_args + 2));

        pylanguage->_save(args0,args1,args2,r_ret);
    }

    StringName func_name__save;


    static void call_virtual_func__set_uid(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
        PyResourceFormatSaver* pylanguage = static_cast<PyResourceFormatSaver*> (p_instance);
        String args0 = String::new_static(const_cast<GDExtensionStringPtr*>(p_args + 0));
        int args1 = *((int*)(p_args + 1));
        pylanguage->_set_uid(args0,args1,r_ret);
    }

    StringName func_name__set_uid;


    static void call_virtual_func__recognize(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
        PyResourceFormatSaver* pylanguage = static_cast<PyResourceFormatSaver*> (p_instance);
        Resource args0 = Resource::new_static(functions::get_ref_get_object()(p_args[0]));
        pylanguage->_recognize(args0,r_ret);
    }

    StringName func_name__recognize;


    static void call_virtual_func__get_recognized_extensions(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
        PyResourceFormatSaver* pylanguage = static_cast<PyResourceFormatSaver*> (p_instance);
        Resource args0 = *((Resource*)(p_args + 0));



        pylanguage->_get_recognized_extensions(args0,r_ret);
    }

    StringName func_name__get_recognized_extensions;


    static void call_virtual_func__recognize_path(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {
        PyResourceFormatSaver* pylanguage = static_cast<PyResourceFormatSaver*> (p_instance);
        Resource args0 = *((Resource*)(p_args + 0));
        String args1 = String::new_static(const_cast<GDExtensionStringPtr*>(p_args + 1));

        pylanguage->_recognize_path(args0,args1,r_ret);
    }
    StringName func_name__recognize_path;


    GDExtensionClassCallVirtual get_virtual_saver(void *p_userdata, GDExtensionConstStringNamePtr p_name) {

        StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);

        if (string_names_equal_save(saver::func_name__save, name)){
            return saver::call_virtual_func__save;
        }

        else if (string_names_equal_save(saver::func_name__set_uid, name)){
            return saver::call_virtual_func__set_uid;
        }

        else if (string_names_equal_save(saver::func_name__recognize, name)){
            return saver::call_virtual_func__recognize;
        }

        else if (string_names_equal_save(saver::func_name__get_recognized_extensions, name)){
            return saver::call_virtual_func__get_recognized_extensions;
        }

        else if (string_names_equal_save(saver::func_name__recognize_path, name)){
            return saver::call_virtual_func__recognize_path;
        }
        assert(false); // There are methods not being handled
        return nullptr;
    }
}
#pragma endregion

void init_func_names_save(){
    saver::func_name__save = c_string_to_string_name("_save");
    saver::func_name__set_uid = c_string_to_string_name("_set_uid");
    saver::func_name__recognize = c_string_to_string_name("_recognize");
    saver::func_name__get_recognized_extensions = c_string_to_string_name("_get_recognized_extensions");
    saver::func_name__recognize_path = c_string_to_string_name("_recognize_path");
}
void register_class_saver(){
    init_func_names_save();
    operator_equal_string_name_save = functions::get_variant_get_ptr_operator_evaluator()(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);

    auto creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_saver;
    creation_info->free_instance_func = free_instance_saver;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = saver::get_virtual_saver;

    StringName class_name = c_string_to_string_name("PyResourceFormatSaver");
    StringName parent_class_name = c_string_to_string_name("ResourceFormatSaver");

    functions::get_classdb_register_extension_class()(_library, &class_name.godot_owner, &parent_class_name.godot_owner, creation_info);
}