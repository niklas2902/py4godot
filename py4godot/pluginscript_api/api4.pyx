from py4godot.utils.print_tools import *
#from py4godot.classes.Engine.Engine cimport *
from py4godot_core_holder.core_holder cimport *

#print("hallo, ich bin importiert")
cdef GDNativeInterface* _interface = get_interface()
cdef api void init_py_language() with gil:
    #print_warning ("init_py_langauge")
    _interface.print_warning("-------------------test", "hallo", "hallo", 1)
    #cdef Engine engine = Engine()
    print_warning("-------------------after constructing engine")