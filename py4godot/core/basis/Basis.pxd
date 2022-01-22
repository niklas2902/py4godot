from py4godot.core.basis.basis_binding cimport *
from py4godot.core.vector3 cimport *
from py4godot.events.events cimport *

cdef class Basis:
    cdef godot_basis _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_basis _native):
        self._native = _native

    @staticmethod
    cdef inline Basis new_static(godot_basis _native):
        cdef Basis o = Basis.__new__(Basis)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o
