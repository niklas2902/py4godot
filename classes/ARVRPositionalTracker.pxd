
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class ARVRPositionalTracker(classes.Object.Object):
    pass
ctypedef enum TrackerHand :TRACKER_HAND_UNKNOWN, TRACKER_LEFT_HAND, TRACKER_RIGHT_HAND, 
