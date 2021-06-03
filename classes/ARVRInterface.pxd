
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class ARVRInterface(classes.Reference.Reference):
    pass
ctypedef enum Tracking_status :ARVR_NORMAL_TRACKING, ARVR_EXCESSIVE_MOTION, ARVR_INSUFFICIENT_FEATURES, ARVR_UNKNOWN_TRACKING, ARVR_NOT_TRACKING, 
ctypedef enum Eyes :EYE_MONO, EYE_LEFT, EYE_RIGHT, 
ctypedef enum Capabilities :ARVR_NONE, ARVR_MONO, ARVR_STEREO, ARVR_AR, ARVR_EXTERNAL, 
