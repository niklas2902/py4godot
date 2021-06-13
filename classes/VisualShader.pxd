
from enum import *
from godot_api.binding_external cimport *
cimport classes.Shader
cdef class VisualShader(classes.Shader.Shader):
    pass
ctypedef enum VisualShader_Type :TYPE_VERTEX, TYPE_FRAGMENT, TYPE_LIGHT, TYPE_MAX, 
