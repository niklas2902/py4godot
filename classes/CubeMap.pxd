
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class CubeMap(classes.Resource.Resource):
    pass
ctypedef enum Flags :FLAG_MIPMAPS, FLAG_REPEAT, FLAG_FILTER, FLAGS_DEFAULT, 
ctypedef enum Side :SIDE_LEFT, SIDE_RIGHT, SIDE_BOTTOM, SIDE_TOP, SIDE_FRONT, SIDE_BACK, 
ctypedef enum Storage :STORAGE_RAW, STORAGE_COMPRESS_LOSSY, STORAGE_COMPRESS_LOSSLESS, 
