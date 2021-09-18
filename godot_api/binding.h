#include "gdnative_api_struct.gen.h"
#include "Python.h"
#include <string.h>
#include <stdio.h>
#include "../classes/classes_api.h"
#define ARRAY_SIZE = 8

typedef struct user_data_struct {
	char data[256];
} user_data_struct;

godot_object* _owner;

const int array_size = sizeof(void *);

//Initializing the reserved words and endings for binding
static const char *PYTHONSCRIPT_RECOGNIZED_EXTENSIONS[] = { "py", "pyc", "pyo", "pyd", 0 };
static const char *PYTHONSCRIPT_RESERVED_WORDS[] = {
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

static const char *PYTHONSCRIPT_COMMENT[] = {"#",0};
static const char *PYTHONSCRIPT_STRING[] = {"\"","\"\"\"",0};


// GDNative supports a large collection of functions for calling back
// into the main Godot executable. In order for your module to have
// access to these functions, GDNative provides your application with
// a struct containing pointers to all these functions.
const godot_gdnative_core_api_struct *api_core = NULL;
const godot_gdnative_ext_nativescript_api_struct *nativescript_api = NULL;
const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11 = NULL;
const godot_gdnative_ext_pluginscript_api_struct *pythonscript_gdapi_ext_pluginscript = NULL;
static godot_pluginscript_language_desc desc;

show_api(){
    printf("value:%p", api_core);
}

void hello(const char *name) {
    printf("hello %s\n", name);
}

void print_pointer(void *pointer) {
    printf("pointer: %p\n", pointer);
}

PyObject* from_godot_string(const wchar_t* string){
    return PyUnicode_FromWideChar(string,-1);
}