
from enum import *
from godot_api.binding_external cimport *
cimport classes.CSGPrimitive
cdef class CSGPolygon(classes.CSGPrimitive.CSGPrimitive):
    pass
ctypedef enum CSGPolygon_PathRotation :PATH_ROTATION_POLYGON, PATH_ROTATION_PATH, PATH_ROTATION_PATH_FOLLOW, 
ctypedef enum CSGPolygon_Mode :MODE_DEPTH, MODE_SPIN, MODE_PATH, 
