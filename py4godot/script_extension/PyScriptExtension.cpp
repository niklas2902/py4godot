#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/Script/Script.h"
#include "py4godot/cppcore/Variant.h"
#include <cassert>

GDExtensionClassCreationInfo* script_creation_info;

  PyScriptExtension* PyScriptExtension::constructor(){
    PyScriptExtension* class_ = new PyScriptExtension();

    StringName class_name = c_string_to_string_name("PyScriptExtension");

    class_->godot_owner = _interface->classdb_construct_object(&class_name.godot_owner);
    _interface->object_set_instance(class_->godot_owner,&class_name.godot_owner , class_);

    class_->_init_values();
    return class_;
}

void* create_instance_script(void* userdata){
    StringName class_name = c_string_to_string_name("ScriptExtension");
    auto gdnative_object = _interface->classdb_construct_object(&class_name.godot_owner);
    return gdnative_object;
}
void free_instance_script(void *p_userdata, GDExtensionClassInstancePtr p_instance){}

void PyScriptExtension::_init_values(){}

void PyScriptExtension::_editor_can_reload_from_file(GDExtensionTypePtr res){}
void PyScriptExtension::_can_instantiate(GDExtensionTypePtr res){}
void  PyScriptExtension::_get_base_script(GDExtensionTypePtr res){}
void PyScriptExtension::_get_global_name(GDExtensionTypePtr res){}
void PyScriptExtension::_inherits_script( Script* script, GDExtensionTypePtr res){}
void PyScriptExtension::_get_instance_base_type(GDExtensionTypePtr res){}
void PyScriptExtension::_instance_create( Object&& for_object, GDExtensionTypePtr res){}
void PyScriptExtension::_placeholder_instance_create( Object&& for_object, GDExtensionTypePtr res){}
void PyScriptExtension::_instance_has( Object&& object, GDExtensionTypePtr res){}
void PyScriptExtension::_has_source_code(GDExtensionTypePtr res){}
void PyScriptExtension::_get_source_code(GDExtensionTypePtr res){}
void PyScriptExtension::_set_source_code( String&& code, GDExtensionTypePtr res){}
void PyScriptExtension::_reload( bool keep_state, GDExtensionTypePtr res){}
void PyScriptExtension::_get_documentation(GDExtensionTypePtr res){}
void PyScriptExtension::_has_method( StringName&& method, GDExtensionTypePtr res){}
void PyScriptExtension::_get_method_info( StringName&& method, GDExtensionTypePtr res){}
void PyScriptExtension::_is_tool(GDExtensionTypePtr res){}
void PyScriptExtension::_is_valid(GDExtensionTypePtr res){}
void PyScriptExtension::_get_language(GDExtensionTypePtr res){}
void PyScriptExtension::_has_script_signal( StringName&& signal, GDExtensionTypePtr res){}
void PyScriptExtension::_get_script_signal_list(GDExtensionTypePtr res){}
void PyScriptExtension::_has_property_default_value( StringName&& property, GDExtensionTypePtr res){}
void PyScriptExtension::_get_property_default_value( StringName&& property, GDExtensionTypePtr res){}
void PyScriptExtension::_update_exports(GDExtensionTypePtr res){}
void PyScriptExtension::_get_script_method_list(GDExtensionTypePtr res){}
void PyScriptExtension::_get_script_property_list(GDExtensionTypePtr res){}
void PyScriptExtension::_get_member_line( StringName&& member, GDExtensionTypePtr res){}
void PyScriptExtension::_get_constants(GDExtensionTypePtr res){}
void PyScriptExtension::_get_members(GDExtensionTypePtr res){}
void PyScriptExtension::_is_placeholder_fallback_enabled(GDExtensionTypePtr res){}
void PyScriptExtension::_get_rpc_config(GDExtensionTypePtr res){}

GDExtensionClassCallVirtual get_virtual_script(void *p_userdata, GDExtensionConstStringNamePtr p_name) {

    StringName name = StringName::new_static(((void**)const_cast<GDExtensionTypePtr>(p_name))[0]);
    auto test_str = String::new2(name);
    const char* c_name_str = gd_string_to_c_string(main_interface, &test_str.godot_owner, test_str.length());


    assert(false); // There are methods not being handled
    return nullptr;
}

void register_class_script(){
    //init_func_names();
    /*operator_equal_string_name = _interface->variant_get_ptr_operator_evaluator(
        GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME,
        GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    */
    auto creation_info = new GDExtensionClassCreationInfo();
    creation_info->create_instance_func = create_instance_script;
    creation_info->free_instance_func = free_instance_script;
    creation_info->class_userdata = creation_info;
    creation_info->get_virtual_func = get_virtual_script;

    StringName class_name = c_string_to_string_name("PyScriptExtension");
    StringName parent_class_name = c_string_to_string_name("ScriptLanguageExtension");

    _interface->classdb_register_extension_class(_library, &class_name.godot_owner, &parent_class_name.godot_owner, creation_info);
}