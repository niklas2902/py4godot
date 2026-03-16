# distutils: language=c++

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

    output(c_str, "error", "error",1, 1);


def print_error_detailed(str file, str function, int line, *objects, sep=' ', end=''):
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str

    cdef bytes encoded_file= file.encode('utf-8')
    cdef bytes encoded_function = function.encode('utf-8')
    output(c_str, encoded_file, encoded_function,line, 1);


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

def py_log(*objects, sep=' ', end=''):
    return
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str

    output(c_str, "test", "test",1, 1);

def debug(*objects, sep=' ', end=''):
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str

    output(c_str, "test", "test",1, 1);

def print(*objects, sep=' ', end=''):
    cdef GDExtensionInterfacePrintError output = tools.get_print_error()

    string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    output(string, "test", "test",1, 1);