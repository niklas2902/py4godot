
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeColorFunc(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeColorFunc_Function :FUNC_GRAYSCALE, FUNC_SEPIA, 
