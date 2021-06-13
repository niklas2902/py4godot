
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Shader(classes.Resource.Resource):
    pass
ctypedef enum Shader_Mode :MODE_SPATIAL, MODE_CANVAS_ITEM, MODE_PARTICLES, 
