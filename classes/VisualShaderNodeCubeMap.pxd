
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualShaderNode
cdef class VisualShaderNodeCubeMap(classes.VisualShaderNode.VisualShaderNode):
    pass
ctypedef enum VisualShaderNodeCubeMap_TextureType :TYPE_DATA, TYPE_COLOR, TYPE_NORMALMAP, 
ctypedef enum VisualShaderNodeCubeMap_Source :SOURCE_TEXTURE, SOURCE_PORT, 
