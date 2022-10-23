#include "gdnative_interface.h"
#include <python.h>

#include <string.h>

#ifdef _WIN64
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"addons/linux/cpython-3.9.7-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"addons/linux64/cpython-3.9.7-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-windows32/python/install"
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

typedef struct user_data_struct {
	char data[256];
} user_data_struct;

static PyThreadState *gilstate = NULL;


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


GDN_EXPORT GDNativeBool py4godot_init(const GDNativeInterface *p_interface, const GDNativeExtensionClassLibraryPtr p_library, GDNativeInitialization *r_initialization)
{
    /*GDExtensionBinding::InitObject init_obj(p_interface, p_library, r_initialization);

    init_obj.register_initializer(initialize_summator_types);
    init_obj.register_terminator(uninitialize_summator_types);
    init_obj.set_minimum_library_initialization_level(MODULE_INITIALIZATION_LEVEL_SCENE);
    */

        printf(
    "              _  _                   _       _     \n"
    "  _ __  _   _| || |   __ _  ___   __| | ___ | |_   \n"
    " | '_ \\| | | | || |_ / _` |/ _ \\ / _` |/ _ \\| __|  \n"
    " | |_) | |_| |__   _| (_| | (_) | (_| | (_) | |_   \n"
    " | .__/ \\__, |  |_|  \\__, |\\___/ \\__,_|\\___/ \\__|  \n"
    " |_|    |___/        |___/                         \n"
    );
    printf("py4godot - version 0.1\n");
    p_interface->print_warning("test", "test", "test",1);

    Py_SetProgramName(L"godot");
    Py_SetPythonHome(PYTHONHOME);
    // Initialize interpreter but skip initialization registration of signal handlers
    Py_InitializeEx(0);
    // PyEval_InitThreads acquires the GIL, so we must release it later.
    // Since python3.7 PyEval_InitThreads is automatically called by Py_InitializeEx, but it's better to leave it here
    // to be explicit. Calling it again does nothing.
    PyEval_InitThreads();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return 1;
    }

    // Release the Kraken... er I mean the GIL !
    gilstate = PyEval_SaveThread();
    return 1;
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