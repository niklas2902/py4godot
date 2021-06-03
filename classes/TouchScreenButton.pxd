
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class TouchScreenButton(classes.Node2D.Node2D):
    pass
ctypedef enum VisibilityMode :VISIBILITY_ALWAYS, VISIBILITY_TOUCHSCREEN_ONLY, 
