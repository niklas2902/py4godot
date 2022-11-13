
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot_core_holder.core_holder cimport *

gdnative_interface = get_interface()

def print_warning(*objects, sep=' ', end=''):
    cdef char * string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    gdnative_interface.print_warning(string, "test", "test",1);

def print(*objects, sep=' ', end=''):
    string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    gdnative_interface.print_warning(string, "test", "test",1);