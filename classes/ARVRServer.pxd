
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class ARVRServer(classes.Object.Object):
    pass
ctypedef enum ARVRServer_RotationMode :RESET_FULL_ROTATION, RESET_BUT_KEEP_TILT, DONT_RESET_ROTATION, 
ctypedef enum ARVRServer_TrackerType :TRACKER_CONTROLLER, TRACKER_BASESTATION, TRACKER_ANCHOR, TRACKER_ANY_KNOWN, TRACKER_UNKNOWN, TRACKER_ANY, 
