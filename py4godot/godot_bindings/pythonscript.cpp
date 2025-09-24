#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#endif

typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                            GDExtensionClassLibraryPtr p_library,
                                            GDExtensionInitialization *r_initialization);

extern "C" {
    // Entry point for initializing Python script extension
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                                       GDExtensionClassLibraryPtr p_library,
                                                       GDExtensionInitialization *r_initialization) {

        #if defined(__linux__)
        void* handle = nullptr;
        char python_home[PATH_MAX];
        wcstombs(python_home, PYTHONHOME, sizeof(python_home));


        #if defined(__aarch64__)
        // Load the ARM64 Linux shared library
        handle = dlopen((std::string(python_home) + "/bin/main.so").c_str(), RTLD_NOW | RTLD_GLOBAL);
        #else
        // Load the x86_64 Linux shared library
        handle = dlopen((std::string(python_home) + "/bin/main.so").c_str(), RTLD_NOW | RTLD_GLOBAL);
        #endif

        #elif defined(__APPLE__)
        char python_home[PATH_MAX];
        wcstombs(python_home, PYTHONHOME, sizeof(python_home));
        // Load the shared library on macOS
        void* handle = dlopen((std::string(python_home) + "/bin/main.dylib").c_str(), RTLD_NOW | RTLD_GLOBAL);
        #endif

        #if defined(__linux__) || defined(__APPLE__)
        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 1;
        }

        // Clear any existing errors
        dlerror();

        // Load the py4godot_init symbol
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            dlclose(handle);  // Close the library before exiting
            return 1;
        }

        // Call the loaded function
        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);

        // Close the library handle only on linux (crash on macos)
        #if defined(__linux__)
//        dlclose(handle);
        #endif
        return result;

        #endif
        #ifdef _WIN64
        // Direct call on Windows, where dynamic linking is handled differently
        py4godot_init(p_get_proc_address, p_library, r_initialization);
        return 1;
        #endif

    }
}