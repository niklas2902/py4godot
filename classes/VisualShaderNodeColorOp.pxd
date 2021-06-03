
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeColorOp(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum Operator :OP_SCREEN, OP_DIFFERENCE, OP_DARKEN, OP_LIGHTEN, OP_OVERLAY, OP_DODGE, OP_BURN, OP_SOFT_LIGHT, OP_HARD_LIGHT, 
