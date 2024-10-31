#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux
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
        // Load the shared library on Linux
        void* handle = dlopen("addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        #elif defined(__APPLE__)
        // Load the shared library on macOS
        void* handle = dlopen("addons/py4godot/cpython-3.12.4-darwin64/python/bin/main.dylib", RTLD_NOW | RTLD_GLOBAL);
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

        // Close the library handle
        dlclose(handle);

        #endif
        #ifdef _WIN64
        // Direct call on Windows, where dynamic linking is handled differently
        py4godot_init(p_get_proc_address, p_library, r_initialization);
        #endif

        return result;
    }
}


