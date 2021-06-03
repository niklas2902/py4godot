
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class TileMap(classes.Node2D.Node2D):
    pass
ctypedef enum Mode :MODE_SQUARE, MODE_ISOMETRIC, MODE_CUSTOM, 
ctypedef enum TileOrigin :TILE_ORIGIN_TOP_LEFT, TILE_ORIGIN_CENTER, TILE_ORIGIN_BOTTOM_LEFT, 
ctypedef enum HalfOffset :HALF_OFFSET_X, HALF_OFFSET_Y, HALF_OFFSET_DISABLED, HALF_OFFSET_NEGATIVE_X, HALF_OFFSET_NEGATIVE_Y, 
