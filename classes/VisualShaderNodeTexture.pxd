
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeTexture(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeTexture_TextureType :TYPE_DATA, TYPE_COLOR, TYPE_NORMALMAP, 
ctypedef enum VisualShaderNodeTexture_Source :SOURCE_TEXTURE, SOURCE_SCREEN, SOURCE_2D_TEXTURE, SOURCE_2D_NORMAL, SOURCE_DEPTH, SOURCE_PORT, 
