
from py4godot.core.pool_array.pool_array_binding cimport *

cdef class PoolByteArray:
    def __init__(self, List_):
        self.update_event = UpdateEvent()
        #api_core.godot_pool_byte_array_new(&self._native)

cdef class PoolRealArray:
    def __init__(self, list_):
        self.update_event = UpdateEvent()

cdef class PoolIntArray:
    def __init__(self, list_):
        self.update_event = UpdateEvent()
cdef class PoolStringArray:
    def __init__(self, list_):
        self.update_event = UpdateEvent()

cdef class PoolVector2Array:
    def __init__(self, list_):
        self.update_event = UpdateEvent()
cdef class PoolVector3Array:
    def __init__(self, list_):
        self.update_event = UpdateEvent()

cdef class PoolColorArray:
    def __init__(self, list_):
        self.update_event = UpdateEvent()