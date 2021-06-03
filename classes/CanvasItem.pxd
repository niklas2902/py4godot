
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class CanvasItem(classes.Node.Node):
    pass
ctypedef enum BlendMode :BLEND_MODE_MIX, BLEND_MODE_ADD, BLEND_MODE_SUB, BLEND_MODE_MUL, BLEND_MODE_PREMULT_ALPHA, BLEND_MODE_DISABLED, 
