
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class AnimationNodeStateMachineTransition(classes.Resource.Resource):
    pass
ctypedef enum AnimationNodeStateMachineTransition_SwitchMode :SWITCH_MODE_IMMEDIATE, SWITCH_MODE_SYNC, SWITCH_MODE_AT_END, 
