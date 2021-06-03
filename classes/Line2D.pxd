
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class Line2D(classes.Node2D.Node2D):
    pass
ctypedef enum LineTextureMode :LINE_TEXTURE_NONE, LINE_TEXTURE_TILE, LINE_TEXTURE_STRETCH, 
ctypedef enum LineCapMode :LINE_CAP_NONE, LINE_CAP_BOX, LINE_CAP_ROUND, 
ctypedef enum LineJointMode :LINE_JOINT_SHARP, LINE_JOINT_BEVEL, LINE_JOINT_ROUND, 
