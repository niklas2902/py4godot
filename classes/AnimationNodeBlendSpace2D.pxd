
from enum import *
from godot_api.binding_external cimport *
cimport classes.AnimationRootNode
cdef class AnimationNodeBlendSpace2D(classes.AnimationRootNode.AnimationRootNode):
    pass
ctypedef enum BlendMode :BLEND_MODE_INTERPOLATED, BLEND_MODE_DISCRETE, BLEND_MODE_DISCRETE_CARRY, 
