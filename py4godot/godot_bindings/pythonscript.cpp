#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#elif defined(_WIN32) || defined(_WIN64)
#include <iostream>
#include <windows.h>  // For LoadLibrary, GetProcAddress, FreeLibrary on Windows
#endif

typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                            GDExtensionClassLibraryPtr p_library,
                                            GDExtensionInitialization *r_initialization);

std::string get_library_path() {
    #if defined(__linux__)
    return "addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so";
    #elif defined(__APPLE__)
    return "addons/py4godot/cpython-3.12.4-darwin64/python/bin/main.dylib";
    #elif defined(_WIN32) || defined(_WIN64)
    #if defined(_M_ARM64)
    return "addons\\py4godot\\cpython-3.12.4-windowsarm64\\python\\main.dll";
    #else
    return "addons\\py4godot\\cpython-3.12.4-windows64\\python\\main.dll";
    #endif
    #else
    return "";  // Unsupported platform
    #endif
}

extern "C" {
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                                       GDExtensionClassLibraryPtr p_library,
                                                       GDExtensionInitialization *r_initialization) {
        std::string library_path = get_library_path();
        if (library_path.empty()) {
            std::cerr << "Unsupported platform or architecture." << std::endl;
            return 1;
        }

        #if defined(__linux__)
        void* handle = nullptr;

        #if defined(__aarch64__)
        // Load the ARM64 Linux shared library
        handle = dlopen("addons/py4godot/cpython-3.12.4-linuxarm64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        #else
        // Load the x86_64 Linux shared library
        handle = dlopen("addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        #endif

        #elif defined(__APPLE__)
        // Load the shared library on macOS
        void* handle = dlopen("addons/py4godot/cpython-3.12.4-darwin64/python/bin/main.dylib", RTLD_NOW | RTLD_GLOBAL);
        #endif

        #if defined(__linux__) || defined(__APPLE__)
        void* handle = dlopen(library_path.c_str(), RTLD_NOW | RTLD_GLOBAL);
        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 1;
        }

        dlerror();  // Clear any existing errors
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc)dlsym(handle, "py4godot_init");
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            dlclose(handle);
            return 1;
        }

        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);
        #if defined(__linux__)
        // Uncomment if safe to close the library on Linux
        // dlclose(handle);
        #endif
        return result;

        #elif defined(_WIN32) || defined(_WIN64)
        HMODULE handle = LoadLibraryA(library_path.c_str());
        if (!handle) {
            std::cerr << "Cannot load library: " << GetLastError() << std::endl;
            return 1;
        }

        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc)GetProcAddress(handle, "py4godot_init");
        if (!load_function_handle) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << GetLastError() << std::endl;
            FreeLibrary(handle);
            return 1;
        }

        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);
        // Keep the library loaded for the application's lifetime
        return result;
        #endif
    }
}