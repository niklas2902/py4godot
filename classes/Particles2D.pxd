
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class Particles2D(classes.Node2D.Node2D):
    pass
ctypedef enum Particles2D_DrawOrder :DRAW_ORDER_INDEX, DRAW_ORDER_LIFETIME, 
