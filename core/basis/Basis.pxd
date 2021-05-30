from core.basis.basis_binding cimport *
from core.vector3 cimport *

cdef class Basis:
    cdef godot_basis _native

    cdef inline void set_native(self, godot_basis _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_basis _native):
        cdef Basis o = Basis.__new__(Basis)
        o.set_native(_native)
