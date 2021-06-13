
from enum import *
from godot_api.binding_external cimport *
cimport classes.Spatial
cdef class Camera(classes.Spatial.Spatial):
    pass
ctypedef enum Camera_KeepAspect :KEEP_WIDTH, KEEP_HEIGHT, 
ctypedef enum Camera_Projection :PROJECTION_PERSPECTIVE, PROJECTION_ORTHOGONAL, PROJECTION_FRUSTUM, 
ctypedef enum Camera_DopplerTracking :DOPPLER_TRACKING_DISABLED, DOPPLER_TRACKING_IDLE_STEP, DOPPLER_TRACKING_PHYSICS_STEP, 
