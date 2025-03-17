#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "Python.h"
#include <vector>
#include <string>
#include <unordered_set>
struct InstanceData{
    PyObject* owner;
    std::vector<GDExtensionPropertyInfo> gd_properties; // properties for GODOT
    std::vector<std::shared_ptr<CPPPropertyDescription>> properties; // properties, we are working with internally
    std::vector<GDExtensionMethodInfo>gd_methods;
    std::vector<std::shared_ptr<CPPMethodDescription>> methods;
    std::vector<std::string> already_set_properties;
    std::unordered_set<std::string> custom_properties;
    void* script;
    GDExtensionScriptInstanceInfo info;
    bool is_placeholder;
};