#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include <vector>
#include <string>
#include "Python.h"

struct CPPSignalArg{
    char* name;
    godot::StringName stringname_name;
    GDExtensionVariantType type;

    // Internal for stroing C++ stuff
    std::shared_ptr<godot::Dictionary> arg_dict;
    godot::String godot_name;
    godot::Variant arg_name_key_variant;
    godot::Variant var_name_arg;
    godot::String arg_type_key;
    godot::Variant arg_type_key_variant;
    godot::Variant var_type_arg;
    godot::Variant var_args_dict;
};

struct CPPSignalDescription{
    godot::Dictionary dictionary;
    godot::StringName name;
    std::vector<CPPSignalArg> args;

    // Internal for storing C++ stuff
    godot::Dictionary cpp_signal;
    godot::String name_key_string;
    godot::Variant name_key;
    godot::Variant name_val;
    godot::String args_key_string;
    godot::Variant args_key;
    godot::Array args_array;
    godot::Variant args_array_value;
};

struct CPPPropertyDescription{
    GDExtensionVariantType type_;
    godot::StringName name;
    godot::StringName class_name;
    uint32_t hint;
    godot::String hint_string;
    uint32_t usage;
};

struct CPPMethodDescription{
    std::shared_ptr<CPPPropertyDescription> return_value;
    std::vector<std::shared_ptr<CPPPropertyDescription>> args;
    std::vector<GDExtensionPropertyInfo> cpp_args;
    godot::StringName name;
    int flags;
    uint32_t id;
};

struct TransferObject{
    std::vector<std::shared_ptr<CPPSignalDescription>> signals;
    std::vector<std::shared_ptr<CPPPropertyDescription>> properties;
    std::vector<std::shared_ptr<CPPMethodDescription>> methods;
    std::vector<PyObject*> default_values;
    std::string icon_path;
    PyObject* class_;
    PyObject* instance;
    bool is_tool = false;
};