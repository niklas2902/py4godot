
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisibilityNotifier
cdef class VisibilityEnabler(classes.VisibilityNotifier.VisibilityNotifier):
    pass
ctypedef enum Enabler :ENABLER_PAUSE_ANIMATIONS, ENABLER_FREEZE_BODIES, ENABLER_MAX, 
