
from enum import *
from godot_api.binding_external cimport *
cimport classes.GeometryInstance
cdef class CSGShape(classes.GeometryInstance.GeometryInstance):
    pass
ctypedef enum Operation :OPERATION_UNION, OPERATION_INTERSECTION, OPERATION_SUBTRACTION, 
