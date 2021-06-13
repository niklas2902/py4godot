
from enum import *
from godot_api.binding_external cimport *
cimport classes.Sky
cdef class ProceduralSky(classes.Sky.Sky):
    pass
ctypedef enum ProceduralSky_TextureSize :TEXTURE_SIZE_256, TEXTURE_SIZE_512, TEXTURE_SIZE_1024, TEXTURE_SIZE_2048, TEXTURE_SIZE_4096, TEXTURE_SIZE_MAX, 
