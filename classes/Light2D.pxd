
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class Light2D(classes.Node2D.Node2D):
    pass
ctypedef enum Light2D_ShadowFilter :SHADOW_FILTER_NONE, SHADOW_FILTER_PCF3, SHADOW_FILTER_PCF5, SHADOW_FILTER_PCF7, SHADOW_FILTER_PCF9, SHADOW_FILTER_PCF13, 
ctypedef enum Light2D_Mode :MODE_ADD, MODE_SUB, MODE_MIX, MODE_MASK, 
