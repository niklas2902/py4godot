#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include <vector>
#include "Python.h"

struct TransferObject{
    std::vector<godot::Dictionary> signals;
    std::vector<GDExtensionPropertyInfo> properties;
    PyObject* class_;
    PyObject* instance;
};

struct CPPSignalArg{
    char* name;
    GDExtensionVariantType type;
};