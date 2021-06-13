
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class TileSet(classes.Resource.Resource):
    pass
ctypedef enum TileSet_TileMode :SINGLE_TILE, AUTO_TILE, ATLAS_TILE, 
ctypedef enum TileSet_AutotileBindings :BIND_TOPLEFT, BIND_TOP, BIND_TOPRIGHT, BIND_LEFT, BIND_CENTER, BIND_RIGHT, BIND_BOTTOMLEFT, BIND_BOTTOM, BIND_BOTTOMRIGHT, 
ctypedef enum TileSet_BitmaskMode :BITMASK_2X2, BITMASK_3X3_MINIMAL, BITMASK_3X3, 
