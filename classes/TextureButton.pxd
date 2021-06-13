
from enum import *
from godot_api.binding_external cimport *
cimport classes.BaseButton
cdef class TextureButton(classes.BaseButton.BaseButton):
    pass
ctypedef enum TextureButton_StretchMode :STRETCH_SCALE, STRETCH_TILE, STRETCH_KEEP, STRETCH_KEEP_CENTERED, STRETCH_KEEP_ASPECT, STRETCH_KEEP_ASPECT_CENTERED, STRETCH_KEEP_ASPECT_COVERED, 
