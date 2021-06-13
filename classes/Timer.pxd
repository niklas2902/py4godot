
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class Timer(classes.Node.Node):
    pass
ctypedef enum Timer_TimerProcessMode :TIMER_PROCESS_PHYSICS, TIMER_PROCESS_IDLE, 
