
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeCompare(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum ComparisonType :CTYPE_SCALAR, CTYPE_VECTOR, CTYPE_BOOLEAN, CTYPE_TRANSFORM, 
ctypedef enum Function :FUNC_EQUAL, FUNC_NOT_EQUAL, FUNC_GREATER_THAN, FUNC_GREATER_THAN_EQUAL, FUNC_LESS_THAN, FUNC_LESS_THAN_EQUAL, 
ctypedef enum Condition :COND_ALL, COND_ANY, 
