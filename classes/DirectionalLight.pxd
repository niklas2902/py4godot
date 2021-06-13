
from enum import *
from godot_api.binding_external cimport *
cimport classes.Light
cdef class DirectionalLight(classes.Light.Light):
    pass
ctypedef enum DirectionalLight_ShadowMode :SHADOW_ORTHOGONAL, SHADOW_PARALLEL_2_SPLITS, SHADOW_PARALLEL_4_SPLITS, 
ctypedef enum DirectionalLight_ShadowDepthRange :SHADOW_DEPTH_RANGE_STABLE, SHADOW_DEPTH_RANGE_OPTIMIZED, 
