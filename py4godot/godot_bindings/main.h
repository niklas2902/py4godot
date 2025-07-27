#pragma once
#include "py4godot/godot_bindings/macros.h"
#include "gdextension_interface.h"
#include "functions.h"
#include "Python.h"
#include "py4godot/godot_bindings/pythonpaths.h"

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