# distutils: language=c++
from libc.stdint cimport int8_t, int32_t, int64_t, uint8_t, uint32_t, uint64_t


cdef extern from "functions.h" namespace "functions":
    ctypedef uint8_t GDExtensionBool;
    ctypedef void (*GDExtensionInterfacePrintError)(const char *p_description, const char *p_function, const char *p_file, int32_t p_line, GDExtensionBool p_editor_notify);
    GDExtensionInterfacePrintError get_print_error()
    #GDExtensionInterfacePrintWarning get_print_warning()