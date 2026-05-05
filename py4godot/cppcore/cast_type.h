#include "cast_helpers_api.h"
#include "Python.h"
#include "py4godot/godot_bindings/macros.h"
LIBRARY_API PyObject* cast_to_type(char* classname, PyObject* object_to_cast);
LIBRARY_API void init_casting();


constexpr unsigned int str2int(const char* str, int h = 0)
{
    return !str[h] ? 5381 : (str2int(str, h+1) * 33) ^ str[h];
}