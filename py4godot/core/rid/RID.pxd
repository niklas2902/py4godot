from py4godot.core.rid.rid_binding cimport *
from py4godot.events.events cimport *

cdef class RID:
    cdef godot_rid _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_rid _native):
        self._native = _native

    @staticmethod
    cdef inline RID new_static(godot_rid _native):
        cdef RID o = RID.__new__(RID)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o