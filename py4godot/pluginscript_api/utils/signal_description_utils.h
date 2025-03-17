#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
#include<memory>
using namespace godot;
/*
void create_signal_arg(const char* name, int variant_type, Array& args_dicts){
    Dictionary arg_dict = Dictionary::new0();
    arg_dict.shouldBeDeleted = false;
    auto godot_name = c_string_to_string("name");
    Variant arg_name_key_variant = Variant(godot_name);

    Variant var_name_arg = Variant::new_static(functions::get_dictionary_operator_index()(&arg_dict.godot_owner, &arg_name_key_variant.native_ptr));
    auto name_converted = c_string_to_string(name);
    var_name_arg.init_type(name_converted);
    
    String arg_type_key = c_string_to_string("type");
    Variant arg_type_key_variant = Variant(arg_type_key);

    Variant var_type_arg = Variant::new_static(functions::get_dictionary_operator_index()(&arg_dict.godot_owner, &arg_type_key_variant.native_ptr));
    var_type_arg.init_type(variant_type);

    Variant var_args_dict = Variant(arg_dict);
    args_dicts.append(var_args_dict);
}
*/


std::shared_ptr<CPPSignalDescription> init_signal_description(char* name, std::vector<CPPSignalArg>& args){
    std::shared_ptr<CPPSignalDescription> description  = std::make_shared<CPPSignalDescription>();
    description->name = c_string_to_string_name(name);
    for(auto& arg: args){
        arg.stringname_name = c_string_to_string_name(arg.name);
    }
    description->args = args;

    description->cpp_signal = Dictionary::new0();
    return description;
    /*String signal_key = c_string_to_string("name");
    Variant signal_key_variant = Variant(signal_key);
    auto temp_name = c_string_to_string(name);
    Variant signal_name_variant = Variant(temp_name);
    Variant var_name = Variant::new_static(functions::get_dictionary_operator_index()(&(*signal_dict_ptr).godot_owner, &signal_key_variant.native_ptr));
    // TODO: remove the pointer?
    auto string_name = new StringName{c_string_to_string_name(name)};
    var_name.init_type(*string_name);
    auto var_signal_dict = Variant(*signal_dict_ptr);

    // add args
    String arg_key = c_string_to_string("args");
    Variant arg_key_variant = Variant(arg_key);
    Variant* var_args = new Variant{1};
    var_args->native_ptr = functions::get_dictionary_operator_index()(&(*signal_dict_ptr).godot_owner, &arg_key_variant.native_ptr);

    Array* args_array = new Array();
    GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY, 0);
    GDExtensionTypePtr _args[1];
    constructor(&args_array->godot_owner,_args);

    Dictionary dictionary_signal_args = Dictionary::new0();
    dictionary_signal_args.shouldBeDeleted=false;
    Variant dictionary_var = Variant(1);
    auto type_name = c_string_to_string_name("");
    functions::get_array_set_typed()(&args_array->godot_owner, GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY,  &type_name.godot_owner, &dictionary_var.native_ptr);

    // create a signal arg
    for (const auto& arg: args){
         create_signal_arg(arg.name, arg.type, *args_array);
     }


    //add args dictionaries to args array
    var_args->init_type(*args_array);
    delete args_array;
    delete var_args;
    */
}