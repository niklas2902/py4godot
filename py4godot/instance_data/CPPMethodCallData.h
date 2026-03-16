#pragma once
#include "Python.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/gdextension-api/gdextension_interface.h"
#include <string>
#include <vector>
struct MethodCallData {
  bool has_value = false;
  PyObject *ret_val;
  PyObject *ret_typename;
};