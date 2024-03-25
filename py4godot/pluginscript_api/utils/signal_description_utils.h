#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
using namespace godot;
void print_error(char* text){
    char* text2 = text;
    functions::get_print_error()(text2, "test", "test", 1, 1);
}

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


Dictionary init_signal_description(char* name, std::vector<CPPSignalArg> args){
    auto signal_dict =  Dictionary::py_new0();

    String signal_key = c_string_to_string("name");
    Variant signal_key_variant = Variant(signal_key);
    auto temp_name = c_string_to_string(name);
    Variant signal_name_variant = Variant(temp_name);
    Variant var_name = Variant::new_static(functions::get_dictionary_operator_index()(&signal_dict.godot_owner, &signal_key_variant.native_ptr));
    auto string_name = c_string_to_string(name);
    var_name.init_type(string_name);
    auto var_signal_dict = Variant(signal_dict);

    // add args
    String arg_key = c_string_to_string("args");
    Variant arg_key_variant = Variant(arg_key);
    Variant var_args = Variant::new_static(functions::get_dictionary_operator_index()(&signal_dict.godot_owner, &arg_key_variant.native_ptr));

    Array args_array = Array::py_new0();
    Dictionary dictionary_signal_args = Dictionary::py_new0();
    Variant dictionary_var = Variant(1);
    auto type_name = c_string_to_string_name("");
    functions::get_array_set_typed()(&args_array.godot_owner, GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY,  &type_name.godot_owner, &dictionary_var.native_ptr);

    // create a signal arg
    for (const auto& arg: args){
         create_signal_arg(arg.name, arg.type, args_array);
     }


    //add args dictionaries to args array
    var_args.init_type(args_array);

    return signal_dict;
}