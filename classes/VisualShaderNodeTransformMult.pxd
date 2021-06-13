
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeTransformMult(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeTransformMult_Operator :OP_AxB, OP_BxA, OP_AxB_COMP, OP_BxA_COMP, 
