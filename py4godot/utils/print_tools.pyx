import builtins
from py4godot.godot_bindings.binding_external cimport *
from py4godot_core_holder.core_holder cimport get_core
cimport py4godot.core.string.String as GDString

api_core = get_core()

def print(*objects, sep=' ', end=''):
    string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    api_core.godot_print(&GDString.String(string)._native)