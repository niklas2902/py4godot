
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class OccluderPolygon2D(classes.Resource.Resource):
    pass
ctypedef enum CullMode :CULL_DISABLED, CULL_CLOCKWISE, CULL_COUNTER_CLOCKWISE, 
