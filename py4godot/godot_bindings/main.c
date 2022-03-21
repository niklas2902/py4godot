#include "gdnative_api_struct.gen.h"
#include "../classes/classes_api.h"
#include "../pluginscript_api/api_api.h"
#include "../utils/core_holder_api.h"

#include "../gdnative_api/api_api.h"
#include <string.h>

#ifdef _WIN64
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-windows64/python/install"

#elif _WIN32
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-lnux64/python/install"

#elif __linux32__
#define PYTHONHOME L"addons/linux/cpython-3.9.7-linux/python/install/lib"

#elif __linux__
#define PYTHONHOME L"/home/niklas/Documents/py4godot/build/addons/linux64/cpython-3.9.7-linux64/python/install"

#elif __APPLE__
#define PYTHONHOME L"addons/windows64/cpython-3.9.7-windows32/python/install"
#endif


typedef struct user_data_struct {
	char data[256];
} user_data_struct;

godot_object* _owner;
static PyThreadState *gilstate = NULL;

godot_variant call_method (godot_pluginscript_instance_data *p_data,
			const godot_string_name *p_method, const godot_variant **p_args,
			int p_argcount, godot_variant_call_error *r_error);


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
static godot_pluginscript_language_desc desc;

// GDNative supports a large collection of functions for calling back
// into the main Godot executable. In order for your module to have
// access to these functions, GDNative provides your application with
// a struct containing pointers to all these functions.
static const godot_gdnative_core_api_struct *api_core = NULL;
static const godot_gdnative_ext_nativescript_api_struct *nativescript_api = NULL;
static const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11 = NULL;
static const godot_gdnative_ext_pluginscript_api_struct *gdapi_ext_pluginscript = NULL;

void set_up_bindings();
void set_up_pluginscript();

// `gdnative_init` is a function that initializes our dynamic library.
// Godot will give it a pointer to a structure that contains various bits of
// information we may find useful among which the pointers to our API structures.
void GDN_EXPORT godot_gdnative_init(godot_gdnative_init_options *p_options) {
	api_core = p_options->api_struct;
	printf(
    "              _  _                   _       _     \n"
    "  _ __  _   _| || |   __ _  ___   __| | ___ | |_   \n"
    " | '_ \\| | | | || |_ / _` |/ _ \\ / _` |/ _ \\| __|  \n"
    " | |_) | |_| |__   _| (_| | (_) | (_| | (_) | |_   \n"
    " | .__/ \\__, |  |_|  \\__, |\\___/ \\__,_|\\___/ \\__|  \n"
    " |_|    |___/        |___/                         \n"
    );
    printf("py4godot - version 0.1\n");

	// Find NativeScript extensions.
	for (unsigned int i = 0; i < api_core->num_extensions; i++) {
		switch (api_core->extensions[i]->type) {
			case GDNATIVE_EXT_NATIVESCRIPT: {
				nativescript_api = (godot_gdnative_ext_nativescript_api_struct *)api_core->extensions[i];
				const godot_gdnative_api_struct *extension = nativescript_api->next;

				while (extension) {
					if (extension->version.major == 1 && extension->version.minor == 1) {
						nativescript_api_11 = (const godot_gdnative_ext_nativescript_1_1_api_struct *)extension;
					}

					extension = extension->next;
			    }
			}; break;
            case GDNATIVE_EXT_PLUGINSCRIPT:
                gdapi_ext_pluginscript = (const godot_gdnative_ext_pluginscript_api_struct *)api_core->extensions[i];
                break;

			default:
				break;
		};
	};
    Py_SetProgramName(L"godot");
    Py_SetPythonHome(PYTHONHOME);
    // Initialize interpreter but skip initialization registration of signal handlers
    Py_InitializeEx(0);
    // PyEval_InitThreads acquires the GIL, so we must release it later.
    // Since python3.7 PyEval_InitThreads is automatically called by Py_InitializeEx, but it's better to leave it here
    // to be explicit. Calling it again does nothing.
    PyEval_InitThreads();
    import_py4godot__utils__core_holder();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }
    set_core_holder(api_core);
    set_native_script_holder(nativescript_api_11);

    set_up_pluginscript();
    set_up_bindings();

    // Release the Kraken... er I mean the GIL !
    gilstate = PyEval_SaveThread();

}

// `gdnative_terminate` which is called before the library is unloaded.
// Godot will unload the library when no object uses it anymore.
void GDN_EXPORT godot_gdnative_terminate(godot_gdnative_terminate_options *p_options) {

    // Re-acquire the gil in order to finalize properly
    PyEval_RestoreThread(gilstate);

    int ret = Py_FinalizeEx();
}

void set_up_bindings(){
    printf("set up bindings\n");
	import_py4godot__classes__classes();
    if (PyErr_Occurred())
    {
        printf("module not found\n");
        PyErr_Print();
        return ;
    }

    import_py4godot__gdnative_api__api();
    if (PyErr_Occurred())
    {
        PyErr_Print();
        return ;
    }

    init_method_bindings(api_core);
    register_types();

    // from godot-cpp
    // Initialize the `language_index` here since `__register_types()` makes use of it.
	godot_instance_binding_functions binding_funcs = { .alloc_instance_binding_data = wrapper_create, .free_instance_binding_data = wrapper_destroy };

	int language_index = nativescript_api_11->godot_nativescript_register_instance_binding_data_functions(binding_funcs);
    set_bindings_funcs(binding_funcs, language_index);
}


void GDN_EXPORT godot_gdnative_singleton() {
    //placeholder to prevent error from being raised
}


void set_up_pluginscript(){
    printf("set up pluginscript\n");
    import_py4godot__pluginscript_api__api();
    if (PyErr_Occurred())
    {
        printf("error importing\n");
        PyErr_Print();
        return ;
    }
    set_api_core_pluginscript(api_core);


    desc.name = "Python";
    desc.type = "Python";
    desc.extension = "py";
    desc.recognized_extensions = RECOGNIZED_EXTENSIONS;
    desc.init = init_pluginscript;
    desc.finish = finish_pluginscript;
    desc.reserved_words = RESERVED_WORDS;
    desc.comment_delimiters = COMMENT_DELIMITERS;
    desc.string_delimiters = STRING_DELIMITERS;
    desc.has_named_classes = true;
    desc.add_global_constant = add_global_constant_pluginscript;

    desc.script_desc.init=init_pluginscript_desc;
    desc.script_desc.finish=finish_pluginscript_desc;

    desc.script_desc.instance_desc.init=init_pluginscript_instance;
    desc.script_desc.instance_desc.finish=finish_pluginscript_instance;
    desc.script_desc.instance_desc.set_prop=set_prop_pluginscript_instance;
    desc.script_desc.instance_desc.get_prop=get_prop_pluginscript_instance;
    desc.script_desc.instance_desc.call_method=call_method_pluginscript_instance;
    desc.script_desc.instance_desc.notification=notification_pluginscript_instance;

    desc.get_template_source_code = pluginscript_get_template_source_code;


    // TODO: make python api to c
    //Todo: look at terminate
    gdapi_ext_pluginscript->godot_pluginscript_register_language(&desc);
}

void hello(const char *name) {
    printf("hello %s\n", name);
}