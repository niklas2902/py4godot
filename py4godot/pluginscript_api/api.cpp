#pragma once
#include "py4godot/script_language/PyLanguage.h"
#include "py4godot/script_extension/PyScriptExtension.h"
#include "py4godot/format_loader/PyResourceFormatLoader.h"
#include "py4godot/format_saver/PyResourceFormatSaver.h"
#include "py4godot/cppclasses/ResourceSaver/ResourceSaver.h"
#include "py4godot/cppclasses/ResourceLoader/ResourceLoader.h"
#include "py4godot/cppclasses/Engine/Engine.h"
#include "py4godot/pluginscript_api/api.h"
#include "py4godot/godot_bindings/main.h"
#include "py4godot/cpputils/utils.h"
godot::PyLanguage* py_language;
godot::PyResourceFormatLoader * py_resource_format_loader;
godot::PyResourceFormatSaver * py_resource_format_saver;

void godot::init_py_language(){
    register_class();
    register_class_script();
    register_class_loader();
    register_class_saver();

    py_language = godot::PyLanguage::constructor();
    py_resource_format_loader = godot::PyResourceFormatLoader::constructor(py_language);
    py_resource_format_saver = godot::PyResourceFormatSaver::constructor();

    std::shared_ptr<godot::ResourceLoader> resource_loader = godot::ResourceLoader::get_instance();
    std::shared_ptr<godot::ResourceSaver> resource_saver = godot::ResourceSaver::get_instance();
    std::shared_ptr<godot::Engine> engine = godot::Engine::get_instance();

    engine->is_in_physics_frame();
    engine->register_script_language(py_language);
    resource_loader->add_resource_format_loader(py_resource_format_loader, false);

    resource_saver->add_resource_format_saver(py_resource_format_saver, false);

}