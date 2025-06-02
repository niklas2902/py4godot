#pragma once
#include "py4godot/godot_bindings/macros.h"
#include "gdextension_interface.h"
#include "functions.h"
#include "Python.h"


#ifdef _WIN64
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-windows64/python"
#define PYTHONPATH "addons/py4godot/cpython-3.12.4-windows64/python/Lib/site-packages"

#elif _WIN32
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-windows32/python/"

#elif __linux32__ && defined(__i386__)
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-linux32/python/"


#elif defined(__linux__) && defined(__aarch64__)
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-linux-arm64/python/"
#define PYTHONPATH "/addons/py4godot/cpython-3.12.4-linux-arm64/python/lib/python3.12/site-packages"


#elif __linux__
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-linux64/python"
#define PYTHONPATH "/addons/py4godot/cpython-3.12.4-linux64/python/lib/python3.12/site-packages"


#elif __APPLE__
#define PYTHONHOME L"addons/py4godot/cpython-3.12.4-darwin64/python"
#define PYTHONPATH "/addons/py4godot/cpython-3.12.4-darwin64/python/lib/python3.12/site-packages"
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

//Setting up threading
#if defined(_WIN64) || defined(_WIN32)
    #include <mutex>
    extern std::mutex mtx; // Define a mutex
    #define LOCK //std::lock_guard<std::mutex> lock
#else
    #include <mutex>
    extern std::mutex mtx; // Define a mutex
    #define LOCK //std::lock_guard<std::mutex> lock
#endif

extern GDExtensionClassLibraryPtr _library;

static PyThreadState *gilstate = NULL;
extern "C" {
GDExtensionBool GDN_EXPORT py4godot_init(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization);
}