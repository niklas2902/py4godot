#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "Python.h"
#include <vector>
#include <string>
#include <unordered_set>
struct InstanceData{
    PyObject* owner;
    std::vector<GDExtensionPropertyInfo> properties;
    std::vector<GDExtensionMethodInfo> methods;
    std::vector<std::string> already_set_properties;
    std::unordered_set<std::string> custom_properties;
    void* script;
    GDExtensionScriptInstanceInfo info;
    bool is_placeholder;
};