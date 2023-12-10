#pragma once
#include "py4godot/godot_bindings/macros.h"
#include "gdextension_interface.h"
#include "functions.h"
#include <python.h>


#ifdef _WIN64
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"addons/linux/cpython-3.11.3-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"addons/linux64/cpython-3.11.3-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-windows32/python/install"
#endif

GDExtensionClassLibraryPtr _library = nullptr;

static PyThreadState *gilstate = NULL;
extern "C" GDExtensionInterfaceGetProcAddress gdextension_interface_get_proc_address = nullptr;
extern "C" void *token = nullptr;
