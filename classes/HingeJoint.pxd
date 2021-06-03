
from enum import *
from godot_api.binding_external cimport *
cimport classes.Joint
cdef class HingeJoint(classes.Joint.Joint):
    pass
ctypedef enum Param :PARAM_BIAS, PARAM_LIMIT_UPPER, PARAM_LIMIT_LOWER, PARAM_LIMIT_BIAS, PARAM_LIMIT_SOFTNESS, PARAM_LIMIT_RELAXATION, PARAM_MOTOR_TARGET_VELOCITY, PARAM_MOTOR_MAX_IMPULSE, PARAM_MAX, 
ctypedef enum Flag :FLAG_USE_LIMIT, FLAG_ENABLE_MOTOR, FLAG_MAX, 
