from core.rid.rid_binding cimport *

cdef class RID:
    cdef godot_rid _native

    cdef inline void set_native(self, godot_rid _native):
        self._native = _native

    @staticmethod
    cdef inline RID new_static(godot_rid _native):
        cdef RID o = RID.__new__(RID)
        o.set_native(_native)
        return o