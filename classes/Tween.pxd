
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class Tween(classes.Node.Node):
    pass
ctypedef enum Tween_TransitionType :TRANS_LINEAR, TRANS_SINE, TRANS_QUINT, TRANS_QUART, TRANS_QUAD, TRANS_EXPO, TRANS_ELASTIC, TRANS_CUBIC, TRANS_CIRC, TRANS_BOUNCE, TRANS_BACK, 
ctypedef enum Tween_TweenProcessMode :TWEEN_PROCESS_PHYSICS, TWEEN_PROCESS_IDLE, 
ctypedef enum Tween_EaseType :EASE_IN, EASE_OUT, EASE_IN_OUT, EASE_OUT_IN, 
