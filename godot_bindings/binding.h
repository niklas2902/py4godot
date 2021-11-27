#include "gdnative_api_struct.gen.h"

godot_gdnative_core_api_struct* api_core;
const godot_gdnative_ext_nativescript_api_struct *nativescript_api;
const godot_gdnative_ext_nativescript_1_1_api_struct *nativescript_api_11;

//members for bindings funcs
int language_index;
godot_instance_binding_functions binding_funcs;

void print_ptr(void* owner)
{
   printf("%p \n", owner);
}
