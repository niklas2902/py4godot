#include "gdextension_interface.h"
#include "instance.h"
static GDExtensionInterface* gdnative_interface = NULL;
#include "api4_api.h"
#include "../../py4godot_core_holder/core_holder_api.h"
#include <python.h>

#include <string.h>

#ifdef _WIN64
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"addons/linux/cpython-3.11.3-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"addons/linux64/cpython-3.11.3-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"addons/windows64/cpython-3.11.3-windows32/python/install"
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


void initialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){
    if (p_level != 3){
        return;
    }

    Py_SetProgramName(L"godot");
    Py_SetPythonHome(PYTHONHOME);
    // Initialize interpreter but skip initialization registration of signal handlers
    Py_InitializeEx(0);

    gdnative_interface->print_error("----initialization called", "test", "test",1,1);
    import_py4godot__pluginscript_api__api4();
    gdnative_interface->print_error("test9", "test", "test",1,1);
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        gdnative_interface->print_error("Error import pluginscript", "test", "test",1,1);
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        gdnative_interface->print_error(strExcType,  "test", "test",1,1);
        PyErr_Print();
        return ;
    }
    init_instance(gdnative_interface);

    gdnative_interface->print_error("test- before- init_py_language", "test", "test",1,1);
    init_py_language();
    gdnative_interface->print_error("test-after- init_py_language", "test", "test",1,1);

    PyEval_InitThreads();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    // Release the Kraken... er I mean the GIL !
    gilstate = PyEval_SaveThread();
    gdnative_interface->print_error("test10", "test", "test",1,1);

}

void deinitialize_py4godot(void *userdata, GDExtensionInitializationLevel p_level){

}

GDExtensionBool GDN_EXPORT py4godot_init(const GDExtensionInterface *p_interface, const GDExtensionClassLibraryPtr p_library, GDExtensionInitialization *r_initialization)
{

    p_interface->print_error("start of initialization", "test2", "test3",1,1);
    gdnative_interface = p_interface;
    r_initialization->initialize = initialize_py4godot;
    r_initialization->deinitialize = deinitialize_py4godot;

    p_interface->print_error("start of initialization", "test", "test",1,1);

    Py_SetProgramName(L"godot");
    Py_SetPythonHome(PYTHONHOME);
    // Initialize interpreter but skip initialization registration of signal handlers
    Py_InitializeEx(0);
    // PyEval_InitThreads acquires the GIL, so we must release it later.
    // Since python3.7 PyEval_InitThreads is automatically called by Py_InitializeEx, but it's better to leave it here
    // to be explicit. Calling it again does nothing.
    p_interface->print_error("test6", "test", "test",1,1);

    import_py4godot_core_holder__core_holder();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        p_interface->print_error("Error import core_holder", "test", "test",1,1);
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        p_interface->print_error(strExcType,  "test", "test",1,1);
        PyErr_Print();
        return 0;
    }
    p_interface->print_error("before setting interface", "test", "test",1,1);
    set_interface(p_interface);
    set_library(p_library);
    p_interface->print_error("test7", "test", "test",1,1);
    p_interface->print_error("test8", "test", "test",1,1);
    p_interface->print_error("test9", "test", "test",1,1);

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
