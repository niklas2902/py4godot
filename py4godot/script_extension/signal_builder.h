#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
using namespace godot;

void create_signal_arg(CPPSignalArg& arg, Array& args_dicts){
    Dictionary arg_dict = Dictionary::new0();
    arg_dict.shouldBeDeleted = false;
    auto godot_name = c_string_to_string("name");
    Variant arg_name_key_variant = Variant(godot_name);


    Variant var_name_arg = arg_dict[arg_name_key_variant];
    var_name_arg.init_type(arg.stringname_name);

    String arg_type_key = c_string_to_string("type");
    Variant arg_type_key_variant = Variant(arg_type_key);

    Variant var_type_arg = arg_dict[arg_type_key_variant];
    var_type_arg.init_type(arg.type);

    Variant var_args_dict = Variant(arg_dict);
    args_dicts.append(var_args_dict);
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

Dictionary build_signal(CPPSignalDescription& description){
    Dictionary ret = Dictionary::new0();
    String name_key_string = c_string_to_string("name");
    Variant name_key = Variant(name_key_string);
    Variant name_val = ret[name_key];
    name_val.init_type(description.name);

    String args_key_string = c_string_to_string("args");
    Variant args_key = Variant(args_key_string);
    Array args_array = create_args_array();
    Variant args_array_value = ret[args_key];
    args_array_value.init_type(args_array);

    // create a signal arg
    auto description_args = description.args;
    for (auto& arg: description_args){
         create_signal_arg(arg, args_array);
     }

    return ret;
}