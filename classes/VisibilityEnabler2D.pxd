
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisibilityNotifier2D
cdef class VisibilityEnabler2D(classes.VisibilityNotifier2D.VisibilityNotifier2D):
    pass
ctypedef enum Enabler :ENABLER_PAUSE_ANIMATIONS, ENABLER_FREEZE_BODIES, ENABLER_PAUSE_PARTICLES, ENABLER_PARENT_PROCESS, ENABLER_PARENT_PHYSICS_PROCESS, ENABLER_PAUSE_ANIMATED_SPRITES, ENABLER_MAX, 
