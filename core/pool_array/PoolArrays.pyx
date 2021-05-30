
from core.pool_array.pool_array_binding cimport *

cdef class PoolByteArray:
    def __init__(self, godot_pool_byte_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_byte_array_new(&self._native)

cdef class PoolRealArray:
    def __init__(self, godot_pool_real_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_real_array_new(&self._native)

cdef class PoolIntArray:
    def __init__(self, godot_pool_int_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_int_array_new(&self._native)

cdef class PoolStringArray:
    def __init__(self, godot_pool_string_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_string_array_new(&self._native)

cdef class PoolVector2Array:
    def __init__(self, godot_pool_vector2_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_vector2_array_new(&self._native)

cdef class PoolVector3Array:
    def __init__(self, godot_pool_vector3_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_vector3_array_new(&self._native)

cdef class PoolColorArray:
    def __init__(self, godot_pool_color_array _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_pool_color_array_new(&self._native)