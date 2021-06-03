
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptMathConstant(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum MathConstant :MATH_CONSTANT_ONE, MATH_CONSTANT_PI, MATH_CONSTANT_HALF_PI, MATH_CONSTANT_TAU, MATH_CONSTANT_E, MATH_CONSTANT_SQRT2, MATH_CONSTANT_INF, MATH_CONSTANT_NAN, MATH_CONSTANT_MAX, 
