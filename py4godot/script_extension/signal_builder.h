#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
using namespace godot;

void create_signal_arg(CPPSignalArg& arg, Array& args_dicts){
    arg.arg_dict = std::make_shared<Dictionary>(Dictionary::new0());
    auto& arg_dict = *arg.arg_dict;
    arg.godot_name = c_string_to_string("name");
    arg.arg_name_key_variant = Variant(arg.godot_name);


    arg.var_name_arg = arg_dict[arg.arg_name_key_variant];
    arg.var_name_arg.init_type(arg.stringname_name);

    arg.arg_type_key = c_string_to_string("type");
    arg.arg_type_key_variant = Variant(arg.arg_type_key);

    arg.var_type_arg = arg_dict[arg.arg_type_key_variant];
    arg.var_type_arg.init_type(arg.type);

    arg.var_args_dict = Variant(arg_dict);
    args_dicts.append(arg.var_args_dict);
}

Array create_args_array(){
    Array args_array =  Array::new0();
    GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY, 0);
    GDExtensionTypePtr _args[1];
    constructor(&args_array.godot_owner,_args);

    Variant dictionary_var = Variant(1);
    auto type_name = c_string_to_string_name("");
    functions::get_array_set_typed()(&args_array.godot_owner, GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY,  &type_name.godot_owner, &dictionary_var.native_ptr);
    return args_array;
}

Dictionary* build_signal(CPPSignalDescription& description){
    description.cpp_signal = Dictionary::new0();
    description.name_key_string = c_string_to_string("name");
    description.name_key = Variant(description.name_key_string);
    description.name_val = description.cpp_signal[description.name_key];
    description.name_val.init_type(description.name);

    description.args_key_string = c_string_to_string("args");
    description.args_key = Variant(description.args_key_string);
    description.args_array = create_args_array();
    description.args_array_value = description.cpp_signal[description.args_key];
    description.args_array_value.init_type(description.args_array);

    // create a signal arg
    auto description_args = description.args;
    for (auto& arg: description_args){
         create_signal_arg(arg, description.args_array);
     }

    return &description.cpp_signal;
}