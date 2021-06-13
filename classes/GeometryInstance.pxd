
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualInstance
cdef class GeometryInstance(classes.VisualInstance.VisualInstance):
    pass
ctypedef enum GeometryInstance_Flags :FLAG_USE_BAKED_LIGHT, FLAG_DRAW_NEXT_FRAME_IF_VISIBLE, FLAG_MAX, 
ctypedef enum GeometryInstance_ShadowCastingSetting :SHADOW_CASTING_SETTING_OFF, SHADOW_CASTING_SETTING_ON, SHADOW_CASTING_SETTING_DOUBLE_SIDED, SHADOW_CASTING_SETTING_SHADOWS_ONLY, 
