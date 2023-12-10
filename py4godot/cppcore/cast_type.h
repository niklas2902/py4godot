#include "cast_helpers_api.h"
#include "Python.h"
#include "py4godot/godot_bindings/macros.h"
LIBRARY_API PyObject* cast_to_type(char* classname, PyObject* object_to_cast);
LIBRARY_API void init_casting();