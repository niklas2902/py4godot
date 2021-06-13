
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeVectorDerivativeFunc(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeVectorDerivativeFunc_Function :FUNC_SUM, FUNC_X, FUNC_Y, 
