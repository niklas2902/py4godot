
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Texture(classes.Resource.Resource):
    pass
ctypedef enum Flags :FLAG_MIPMAPS, FLAG_REPEAT, FLAG_FILTER, FLAGS_DEFAULT, FLAG_ANISOTROPIC_FILTER, FLAG_CONVERT_TO_LINEAR, FLAG_MIRRORED_REPEAT, FLAG_VIDEO_SURFACE, 
