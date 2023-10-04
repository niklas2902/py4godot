#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include <vector>
struct TransferObject{
    std::vector<godot::Dictionary> signals;
};

struct CPPSignalArg{
    char* name;
    GDExtensionVariantType type;
};