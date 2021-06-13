
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeTransformFunc(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeTransformFunc_Function :FUNC_INVERSE, FUNC_TRANSPOSE, 
