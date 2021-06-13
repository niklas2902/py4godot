
from enum import *
from godot_api.binding_external cimport *
cimport classes.Joint
cdef class PinJoint(classes.Joint.Joint):
    pass
ctypedef enum PinJoint_Param :PARAM_BIAS, PARAM_DAMPING, PARAM_IMPULSE_CLAMP, 
