
from enum import *
from godot_api.binding_external cimport *
cimport classes.Spatial
cdef class AudioStreamPlayer3D(classes.Spatial.Spatial):
    pass
ctypedef enum AttenuationModel :ATTENUATION_INVERSE_DISTANCE, ATTENUATION_INVERSE_SQUARE_DISTANCE, ATTENUATION_LOGARITHMIC, ATTENUATION_DISABLED, 
ctypedef enum OutOfRangeMode :OUT_OF_RANGE_MIX, OUT_OF_RANGE_PAUSE, 
ctypedef enum DopplerTracking :DOPPLER_TRACKING_DISABLED, DOPPLER_TRACKING_IDLE_STEP, DOPPLER_TRACKING_PHYSICS_STEP, 
