
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeTransformVecMult(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeTransformVecMult_Operator :OP_AxB, OP_BxA, OP_3x3_AxB, OP_3x3_BxA, 
