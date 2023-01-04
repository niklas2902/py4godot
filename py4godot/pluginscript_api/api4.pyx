from py4godot.utils.print_tools import *
from py4godot.classes.Engine.Engine cimport *
from py4godot.classes.generated4_core cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.script_language.PyLanguage cimport *
from py4godot.script_extension.PyScriptExtension cimport *
from py4godot.classes.ResourceLoader.ResourceLoader cimport *
from py4godot.classes.ResourceSaver.ResourceSaver cimport *
from py4godot.format_saver.PyResourceFormatSaver cimport *
from py4godot.format_loader.PyResourceFormatLoader cimport *
cdef GDNativeInterface* _interface = get_interface()
cdef api void init_py_language() with gil:

    cdef Engine engine = Engine.get_instance()
    cdef ResourceLoader resource_loader = ResourceLoader.get_instance()
    cdef ResourceSaver resource_saver = ResourceSaver.get_instance()
    cdef PyLanguage py_language
    cdef PyResourceFormatLoader py_resource_format_loader
    cdef PyResourceFormatSaver py_resource_format_saver

    try:
        print_warning("--------------before registering")
        register_class_py_script_extension()
        register_class_py_format_loader()
        register_class_py_format_saver()
        register_class()

        print_warning("--------------after registering")

        py_language = PyLanguage.constructor()
        py_resource_format_loader = PyResourceFormatLoader.constructor()
        py_resource_format_saver = PyResourceFormatSaver.constructor()


        print_warning("------------before register_script_language")
        engine.register_script_language(py_language)
        resource_loader.add_resource_format_loader(py_resource_format_loader, False)
        resource_saver.add_resource_format_saver(py_resource_format_saver, False)
        print_warning("------------after register_script_language")
    except Exception as e:
        print_warning("###############An error happened")
        print_warning(str(e))