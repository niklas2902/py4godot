#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"

struct CPPSignalArg{
    char* name;
    GDExtensionVariantType type;
};