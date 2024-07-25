#include "main.h"
#include "gdextension_interface.h"

extern "C"{
    // Unfortunately, godot renames on windows in the editor the dll, it has loaded. As we depend on main.dll in all other dlls,
    // we have to create this as a starting dll which can be renamed without messing up our dependencies.
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address, GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization){
        py4godot_init(p_get_proc_address, p_library, r_initialization);
        return 1;
    }
}


