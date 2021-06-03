
from enum import *
from godot_api.binding_external cimport *
cimport classes.Texture
cdef class ImageTexture(classes.Texture.Texture):
    pass
ctypedef enum Storage :STORAGE_RAW, STORAGE_COMPRESS_LOSSY, STORAGE_COMPRESS_LOSSLESS, 
