from py4godot.utils.print_tools import *
from py4godot.classes.Engine.Engine cimport *
from py4godot.classes.generated4_core cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.script_language.PyLanguage cimport *
from py4godot.script_extension.PyScriptExtension cimport *
cdef GDNativeInterface* _interface = get_interface()
cdef api void init_py_language() with gil:

    cdef Engine engine = Engine.get_instance()
    cdef PyLanguage py_language

    try:
        print_warning("--------------before registering")
        register_class_py_script_extension()
        register_class()

        print_warning("--------------after registering")

        py_language = PyLanguage.constructor()
        print_warning("------------before register_script_language")
        engine.register_script_language(py_language)
        print_warning("------------after register_script_language")
    except Exception as e:
        print_warning("###############An error happened")
        print_warning(str(e))