#pragma once
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/cppclasses/Engine/Engine.h"
#include "py4godot/pluginscript_api/api.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
godot::PyLanguage* py_language;

void godot::init_py_language(){
    register_class();
    register_class_script();
    py_language = godot::PyLanguage::constructor();

    godot::Engine engine = godot::Engine::get_instance();
    engine.register_script_language(py_language);
    _interface->print_error("registered_language", "test", "test",1,1);

}