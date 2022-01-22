from py4godot.core.pool_array.pool_array_binding cimport *
from py4godot.events.events cimport *

cdef class PoolByteArray:
    cdef godot_pool_byte_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_byte_array _native):
        self._native = _native


cdef class PoolRealArray:
    cdef godot_pool_real_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_real_array _native):
        self._native = _native

cdef class PoolIntArray:
    cdef godot_pool_int_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_int_array _native):
        self._native = _native

cdef class PoolStringArray:
    cdef godot_pool_string_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_string_array _native):
        self._native = _native

cdef class PoolVector2Array:
    cdef godot_pool_vector2_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_vector2_array _native):
        self._native = _native

cdef class PoolVector3Array:
    cdef godot_pool_vector3_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_vector3_array _native):
        self._native = _native

cdef class PoolColorArray:
    cdef godot_pool_color_array _native
    cdef UpdateEvent update_event

    @staticmethod
    cdef inline void __new__(self, godot_pool_color_array _native):
        self._native = _native