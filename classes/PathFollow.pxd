
from enum import *
from godot_api.binding_external cimport *
cimport classes.Spatial
cdef class PathFollow(classes.Spatial.Spatial):
    pass
ctypedef enum RotationMode :ROTATION_NONE, ROTATION_Y, ROTATION_XY, ROTATION_XYZ, ROTATION_ORIENTED, 
