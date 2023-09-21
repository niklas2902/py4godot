#pragma once
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/cppclasses/Engine/Engine.h"
#include "py4godot/pluginscript_api/api.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
godot::PyLanguage* py_language;

void godot::init_py_language(){
    register_class();
    py_language = godot::PyLanguage::constructor();

    godot::Engine engine = godot::Engine::get_instance();
    //engine.register_script_language(&py_language);
    GDExtensionTypePtr _args[1];
    _args[0] = py_language->godot_owner;
    Error _ret;
    StringName _class_name = c_string_to_string_name("Engine");
    StringName _method_name = c_string_to_string_name("register_script_language");
    GDExtensionMethodBindPtr method_bind = _interface->classdb_get_method_bind(&_class_name.godot_owner,&_method_name.godot_owner, 1850254898);
    _interface->object_method_bind_ptrcall(method_bind, engine.godot_owner, _args, &_ret);
    _interface->print_error("registered_language", "test", "test",1,1);

}