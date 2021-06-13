
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class Camera2D(classes.Node2D.Node2D):
    pass
ctypedef enum Camera2D_Camera2DProcessMode :CAMERA2D_PROCESS_PHYSICS, CAMERA2D_PROCESS_IDLE, 
ctypedef enum Camera2D_AnchorMode :ANCHOR_MODE_FIXED_TOP_LEFT, ANCHOR_MODE_DRAG_CENTER, 
