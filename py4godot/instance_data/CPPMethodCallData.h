#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "Python.h"
#include <vector>
#include <string>
struct MethodCallData{
    bool has_value = false;
    PyObject* ret_val;
    PyObject* ret_typename;
};