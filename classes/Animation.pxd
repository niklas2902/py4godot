
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Animation(classes.Resource.Resource):
    pass
ctypedef enum Animation_TrackType :TYPE_VALUE, TYPE_TRANSFORM, TYPE_METHOD, TYPE_BEZIER, TYPE_AUDIO, TYPE_ANIMATION, 
ctypedef enum Animation_UpdateMode :UPDATE_CONTINUOUS, UPDATE_DISCRETE, UPDATE_TRIGGER, UPDATE_CAPTURE, 
ctypedef enum Animation_InterpolationType :INTERPOLATION_NEAREST, INTERPOLATION_LINEAR, INTERPOLATION_CUBIC, 
