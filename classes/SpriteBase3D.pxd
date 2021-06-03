
from enum import *
from godot_api.binding_external cimport *
cimport classes.GeometryInstance
cdef class SpriteBase3D(classes.GeometryInstance.GeometryInstance):
    pass
ctypedef enum DrawFlags :FLAG_TRANSPARENT, FLAG_SHADED, FLAG_DOUBLE_SIDED, FLAG_MAX, 
ctypedef enum AlphaCutMode :ALPHA_CUT_DISABLED, ALPHA_CUT_DISCARD, ALPHA_CUT_OPAQUE_PREPASS, 
