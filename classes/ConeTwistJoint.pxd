
from enum import *
from godot_api.binding_external cimport *
cimport classes.Joint
cdef class ConeTwistJoint(classes.Joint.Joint):
    pass
ctypedef enum ConeTwistJoint_Param :PARAM_SWING_SPAN, PARAM_TWIST_SPAN, PARAM_BIAS, PARAM_SOFTNESS, PARAM_RELAXATION, PARAM_MAX, 
