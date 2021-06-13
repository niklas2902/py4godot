
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeIs(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeIs_Function :FUNC_IS_INF, FUNC_IS_NAN, 
