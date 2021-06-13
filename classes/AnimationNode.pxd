
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class AnimationNode(classes.Resource.Resource):
    pass
ctypedef enum AnimationNode_FilterAction :FILTER_IGNORE, FILTER_PASS, FILTER_STOP, FILTER_BLEND, 
