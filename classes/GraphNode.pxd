
from enum import *
from godot_api.binding_external cimport *
cimport classes.Container
cdef class GraphNode(classes.Container.Container):
    pass
ctypedef enum GraphNode_Overlay :OVERLAY_DISABLED, OVERLAY_BREAKPOINT, OVERLAY_POSITION, 
