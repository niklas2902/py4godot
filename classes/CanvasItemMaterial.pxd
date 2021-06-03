
from enum import *
from godot_api.binding_external cimport *
cimport classes.Material
cdef class CanvasItemMaterial(classes.Material.Material):
    pass
ctypedef enum LightMode :LIGHT_MODE_NORMAL, LIGHT_MODE_UNSHADED, LIGHT_MODE_LIGHT_ONLY, 
ctypedef enum BlendMode :BLEND_MODE_MIX, BLEND_MODE_ADD, BLEND_MODE_SUB, BLEND_MODE_MUL, BLEND_MODE_PREMULT_ALPHA, 
