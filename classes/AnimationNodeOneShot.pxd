
from enum import *
from godot_api.binding_external cimport *
cimport classes.AnimationNode
cdef class AnimationNodeOneShot(classes.AnimationNode.AnimationNode):
    pass
ctypedef enum AnimationNodeOneShot_MixMode :MIX_MODE_BLEND, MIX_MODE_ADD, 
