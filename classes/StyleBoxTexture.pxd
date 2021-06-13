
from enum import *
from godot_api.binding_external cimport *
cimport classes.StyleBox
cdef class StyleBoxTexture(classes.StyleBox.StyleBox):
    pass
ctypedef enum StyleBoxTexture_AxisStretchMode :AXIS_STRETCH_MODE_STRETCH, AXIS_STRETCH_MODE_TILE, AXIS_STRETCH_MODE_TILE_FIT, 
