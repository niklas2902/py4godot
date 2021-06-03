
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeScalarDerivativeFunc(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum Function :FUNC_SUM, FUNC_X, FUNC_Y, 
