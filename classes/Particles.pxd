
from enum import *
from godot_api.binding_external cimport *
cimport classes.GeometryInstance
cdef class Particles(classes.GeometryInstance.GeometryInstance):
    pass
ctypedef enum DrawOrder :DRAW_ORDER_INDEX, DRAW_ORDER_LIFETIME, DRAW_ORDER_VIEW_DEPTH, 
