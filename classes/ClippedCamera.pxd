
from enum import *
from godot_api.binding_external cimport *
cimport classes.Camera
cdef class ClippedCamera(classes.Camera.Camera):
    pass
ctypedef enum ProcessMode :CLIP_PROCESS_PHYSICS, CLIP_PROCESS_IDLE, 
