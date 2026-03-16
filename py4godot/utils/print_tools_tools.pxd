# distutils: language=c++
from libc.stdint cimport uint32_t
from libc.stdint cimport int32_t
from libc.stdint cimport uint8_t
from libc.stdint cimport uint64_t
from libc.stdint cimport int64_t
from libc.stdint cimport int8_t

cdef extern from "functions.h" namespace "functions":
    ctypedef uint8_t GDExtensionBool;
    ctypedef void (*GDExtensionInterfacePrintError)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
    GDExtensionInterfacePrintError get_print_error()
    #GDExtensionInterfacePrintWarning get_print_warning()