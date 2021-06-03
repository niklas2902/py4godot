
from enum import *
from godot_api.binding_external cimport *
cimport classes.Light
cdef class OmniLight(classes.Light.Light):
    pass
ctypedef enum ShadowMode :SHADOW_DUAL_PARABOLOID, SHADOW_CUBE, 
ctypedef enum ShadowDetail :SHADOW_DETAIL_VERTICAL, SHADOW_DETAIL_HORIZONTAL, 
