
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class VisualShaderNode(classes.Resource.Resource):
    pass
ctypedef enum PortType :PORT_TYPE_SCALAR, PORT_TYPE_VECTOR, PORT_TYPE_BOOLEAN, PORT_TYPE_TRANSFORM, PORT_TYPE_SAMPLER, PORT_TYPE_MAX, 
