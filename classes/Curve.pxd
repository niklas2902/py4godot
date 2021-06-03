
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Curve(classes.Resource.Resource):
    pass
ctypedef enum TangentMode :TANGENT_FREE, TANGENT_LINEAR, TANGENT_MODE_COUNT, 
