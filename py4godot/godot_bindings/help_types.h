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
};

struct CPPSignalDescription{
    godot::Dictionary dictionary;
    godot::StringName name;
    std::vector<CPPSignalArg> args;
};

struct TransferObject{
    std::vector<CPPSignalDescription*> signals;
    std::vector<GDExtensionPropertyInfo> properties;
    std::vector<GDExtensionMethodInfo> methods;
    std::vector<PyObject*> default_values;
    std::string icon_path;
    PyObject* class_;
    PyObject* instance;
    bool is_tool = false;
};