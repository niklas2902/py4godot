
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class AnimationTreePlayer(classes.Node.Node):
    pass
ctypedef enum AnimationTreePlayer_AnimationProcessMode :ANIMATION_PROCESS_PHYSICS, ANIMATION_PROCESS_IDLE, 
ctypedef enum AnimationTreePlayer_NodeType :NODE_OUTPUT, NODE_ANIMATION, NODE_ONESHOT, NODE_MIX, NODE_BLEND2, NODE_BLEND3, NODE_BLEND4, NODE_TIMESCALE, NODE_TIMESEEK, NODE_TRANSITION, 
