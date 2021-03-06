from godot_api.binding cimport *


cdef extern from "binding.h":
    ctypedef struct godot_basis:
        pass

    struct godot_gdnative_core_api_struct:
