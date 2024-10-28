#include "main.h"
#include "gdextension_interface.h"
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose


typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                         GDExtensionClassLibraryPtr p_library,
                                         GDExtensionInitialization *r_initialization);


extern "C"{
    // Unfortunately, godot renames on windows in the editor the dll, it has loaded. As we depend on main.dll in all other dlls,
    // we have to create this as a starting dll which can be renamed without messing up our dependencies.
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization){

        #ifdef __linux__
        void* handle = dlopen("addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);

        //void* handle = dlopen("/home/niklas/new-game-project/addons/cpython-3.12.4-linux64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 1;
        }

        // Clear any existing errors
        dlerror();

        // Load the RunPythonWithNumpy symbol
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'RunPythonWithNumpy': " << dlsym_error << std::endl;
            dlclose(handle);  // Close the library before exiting
            return 1;
        }
        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);

        // Close the handle after the function call
        dlclose(handle);

        #elif _WIN64
        py4godot_init(p_get_proc_address, p_library, r_initialization);
        #endif
        return 1;
    }
}


