
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class NinePatchRect(classes.Control.Control):
    pass
ctypedef enum AxisStretchMode :AXIS_STRETCH_MODE_STRETCH, AXIS_STRETCH_MODE_TILE, AXIS_STRETCH_MODE_TILE_FIT, 
