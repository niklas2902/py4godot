
from enum import *
from godot_api.binding_external cimport *
cimport classes.MainLoop
cdef class SceneTree(classes.MainLoop.MainLoop):
    pass
ctypedef enum StretchAspect :STRETCH_ASPECT_IGNORE, STRETCH_ASPECT_KEEP, STRETCH_ASPECT_KEEP_WIDTH, STRETCH_ASPECT_KEEP_HEIGHT, STRETCH_ASPECT_EXPAND, 
ctypedef enum GroupCallFlags :GROUP_CALL_DEFAULT, GROUP_CALL_REVERSE, GROUP_CALL_REALTIME, GROUP_CALL_UNIQUE, 
ctypedef enum StretchMode :STRETCH_MODE_DISABLED, STRETCH_MODE_2D, STRETCH_MODE_VIEWPORT, 
