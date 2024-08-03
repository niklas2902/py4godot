#pragma once
#include "py4godot/godot_bindings/macros.h"
#include "gdextension_interface.h"
#include "functions.h"
#include "Python.h"
#include <mutex>


#ifdef _WIN64
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"cpython-3.12.4-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"cpython-3.12.4-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"cpython-3.12.4-windows32/python/install"
#endif
#if !defined(GDN_EXPORT)
#if defined(_WIN32)
#define GDN_EXPORT __declspec(dllexport)
#elif defined(__GNUC__)
#define GDN_EXPORT __attribute__((visibility("default")))
#else
#define GDN_EXPORT
#endif
#endif


extern std::mutex mtx; // Define a mutex

extern GDExtensionClassLibraryPtr _library;

static PyThreadState *gilstate = NULL;
GDExtensionBool GDN_EXPORT py4godot_init(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization);