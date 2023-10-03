#pragma once
#include "gdextension_interface.h"
#include "py4godot/pluginscript_api/api.h"
#include "main.h"

#include <string.h>

#if !defined(GDN_EXPORT)
#if defined(_WIN32)
#define GDN_EXPORT __declspec(dllexport)
#elif defined(__GNUC__)
#define GDN_EXPORT __attribute__((visibility("default")))
#else
#define GDN_EXPORT
#endif
#endif

typedef struct user_data_struct {
	char data[256];
} user_data_struct;

GDExtensionInterface* get_interface(){
    return main_interface;
}

static const char *RECOGNIZED_EXTENSIONS[] = { "py", "pyc", "pyo", "pyd", 0 };
static const char *RESERVED_WORDS[] = {
    "False",
    "None",
    "True",
    "and",
    "as",
    "assert",
    "break",
    "class",
    "continue",
    "def",
    "del",
    "elif",
    "else",
    "except",
    "finally",
    "for",
    "from",
    "global",
    "if",
    "import",
    "in",
    "is",
    "lambda",
    "nonlocal",
    "not",
    "or",
    "pass",
    "raise",
    "return",
    "try",
    "while",
    "with",
    "yield",
    0
};
static const char *COMMENT_DELIMITERS[] = { "#", "\"\"\"\"\"\"", 0 };
static const char *STRING_DELIMITERS[] = { "\" \"", "' '", 0 };


void initialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){
    if (p_level != GDEXTENSION_INITIALIZATION_EDITOR){
        return;
    }

    godot::init_py_language();
    _interface->print_error("test- before- init_py_language", "test", "test",1,1);
    _interface->print_error("test-after- init_py_language", "test", "test",1,1);
    _interface->print_error("test10", "test", "test",1,1);
}

void deinitialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){

}
extern "C"{
    GDExtensionBool GDN_EXPORT py4godot_init(GDExtensionInterface *p_interface, const GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization)
    {

        _interface = p_interface;
        _interface = p_interface;
        main_interface = _interface;
        _library = p_library;
        //set_library(p_library);
        //set_interface(p_interface);
        r_initialization->initialize = initialize_py4godot;
        r_initialization->deinitialize = deinitialize_py4godot;

        Py_SetProgramName(L"godot");
        Py_SetPythonHome(PYTHONHOME);
        // Initialize interpreter but skip initialization registration of signal handlers
        Py_InitializeEx(0);
        // PyEval_InitThreads acquires the GIL, so we must release it later.
        // Since python3.7 PyEval_InitThreads is automatically called by Py_InitializeEx, but it's better to leave it here
        // to be explicit. Calling it again does nothing.
        p_interface->print_error("test6", "test", "test",1,1);

        p_interface->print_error("test7", "test", "test",1,1);
        p_interface->print_error("test8", "test", "test",1,1);
        p_interface->print_error("test9", "test", "test",1,1);

        return 1;
    }
}

// `gdnative_terminate` which is called before the library is unloaded.
// Godot will unload the library when no object uses it anymore.
void godot_gdnative_terminate() {

    // Re-acquire the gil in order to finalize properly
    PyEval_RestoreThread(gilstate);

    int ret = Py_FinalizeEx();
}
void godot_gdnative_singleton() {
    //placeholder to prevent error from being raised
}
