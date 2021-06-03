
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeScalarOp(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum Operator :OP_ADD, OP_SUB, OP_MUL, OP_DIV, OP_MOD, OP_POW, OP_MAX, OP_MIN, OP_ATAN2, OP_STEP, 
