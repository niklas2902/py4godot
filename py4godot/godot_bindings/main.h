#pragma once
#include "py4godot/godot_bindings/macros.h"
#include "gdextension_interface.h"
#include "functions.h"
#include "Python.h"
#include <mutex>


#ifdef _WIN64
#define PYTHONHOME L"cpython-3.11.3-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"cpython-3.11.3-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"cpython-3.11.3-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"cpython-3.11.3-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"cpython-3.11.3-windows32/python/install"
#endif

extern std::mutex mtx; // Define a mutex

extern GDExtensionClassLibraryPtr _library;

static PyThreadState *gilstate = NULL;
