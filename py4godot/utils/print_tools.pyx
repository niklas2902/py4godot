
#from py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.utils.print_tools_tools as tools
from py4godot.utils.utils cimport *

def print_error(*objects, sep=' ', end=''):
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str

    output(c_str, "test", "test",1, 1);

def error(*objects, sep=' ', end=''):
    return
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str

    #get_print_error()(c_str, "test", "test",1, 1);


def debug(*objects, sep=' ', end=''):
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str
    #get_print_error()(c_str, "test", "test",1, 1);

def print(*objects, sep=' ', end=''):
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()

    string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    output(string, "test", "test",1, 1);