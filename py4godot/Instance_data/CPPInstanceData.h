#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "Python.h"
#include <vector>
struct InstanceData{
    PyObject* owner;
    std::vector<GDExtensionPropertyInfo> properties;
    std::vector<godot::Dictionary> methods;
    void* script;
    GDExtensionScriptInstanceInfo info;
    bool is_placeholder;
};