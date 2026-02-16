#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#endif

static GDExtensionInterfacePrintError godot_print_error = NULL;

typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                            GDExtensionClassLibraryPtr p_library,
                                            GDExtensionInitialization *r_initialization);

extern "C" {
    // Entry point for initializing Python script extension
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                                       GDExtensionClassLibraryPtr p_library,
                                                       GDExtensionInitialization *r_initialization) {
         godot_print_error = (GDExtensionInterfacePrintError)p_get_proc_address("print_error");
         godot_print_error("start", "test", "test", 1, 1);

        #if defined(__linux__)
        void* handle = nullptr;
        char python_home[PATH_MAX];
        wcstombs(python_home, PYTHONHOME, sizeof(python_home));


        #if defined(__ANDROID__)
        // Load the Android shared library
        godot_print_error("before load", "test", "test", 1, 1);

        handle = dlopen("libmain.so", RTLD_NOW | RTLD_GLOBAL);
        godot_print_error("after load", "test", "test", 1, 1);

        #elif defined(__aarch64__)
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

        #if defined(__linux__) || defined(__APPLE__) || defined(__ANDROID__)
        if (!handle) {
            godot_print_error("error", "test", "test", 1, 1);

            const char* err = dlerror();
            if (!err) {
                err = "Unknown dlopen error";
            }

            std::cerr << "Cannot load library: " << err << std::endl;

            std::string error_msg = std::string("Cannot load library: ") + err;
            godot_print_error(error_msg.c_str(), "test", "test", 1, 1);

            return 1;
        }

        // Clear any existing errors
        dlerror();

        godot_print_error("before loading handle", "test", "test", 1, 1);

        // Load the py4godot_init symbol
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        godot_print_error("after loading handle", "test", "test", 1, 1);

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            std::string error_msg = std::string("Cannot load symbol 'py4godot_init': ") + dlsym_error;
            godot_print_error(error_msg.c_str(), "test", "test", 1, 1);
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