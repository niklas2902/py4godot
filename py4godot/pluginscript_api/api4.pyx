from py4godot.utils.print_tools import *
from py4godot.classes.Engine.Engine cimport *
from py4godot.classes.generated4_core cimport *
from py4godot_core_holder.core_holder cimport *
#print("hallo, ich bin importiert")
cdef GDNativeInterface* _interface = get_interface()
cdef api void init_py_language() with gil:
    print_warning ("init_py_langauge")
    _interface.print_warning("-------------------test", "hallo", "hallo", 1)
    cdef String string = String.new0()
    _interface.string_new_with_utf8_chars(string.godot_owner, "Engine")
    cdef StringName stringName2 = StringName.new2(string)
    cdef Engine engine = Engine()
    _interface.print_warning("-------------------befpre_getting_singleton", "hallo", "hallo", 1)
    cdef Engine engine2 = Engine.get_instance()
    print_warning("-------------------after constructing engine")