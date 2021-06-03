
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class TextureRect(classes.Control.Control):
    pass
ctypedef enum StretchMode :STRETCH_SCALE_ON_EXPAND, STRETCH_SCALE, STRETCH_TILE, STRETCH_KEEP, STRETCH_KEEP_CENTERED, STRETCH_KEEP_ASPECT, STRETCH_KEEP_ASPECT_CENTERED, STRETCH_KEEP_ASPECT_COVERED, 
