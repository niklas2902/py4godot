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

        py4godot_init(p_get_proc_address, p_library, r_initialization);
        return 1;

    }
}