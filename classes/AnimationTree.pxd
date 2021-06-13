
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class AnimationTree(classes.Node.Node):
    pass
ctypedef enum AnimationTree_AnimationProcessMode :ANIMATION_PROCESS_PHYSICS, ANIMATION_PROCESS_IDLE, ANIMATION_PROCESS_MANUAL, 
