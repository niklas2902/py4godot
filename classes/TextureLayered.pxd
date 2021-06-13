
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class TextureLayered(classes.Resource.Resource):
    pass
ctypedef enum TextureLayered_Flags :FLAG_MIPMAPS, FLAG_REPEAT, FLAG_FILTER, FLAGS_DEFAULT, 
