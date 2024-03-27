#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "Python.h"
#include <vector>
#include <string>
struct InstanceData{
    PyObject* owner;
    std::vector<GDExtensionPropertyInfo> properties;
    std::vector<godot::Dictionary> methods;
    std::vector<std::string> already_set_properties;
    void* script;
    GDExtensionScriptInstanceInfo info;
    bool is_placeholder;
};