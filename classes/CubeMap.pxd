
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class CubeMap(classes.Resource.Resource):
    pass
ctypedef enum CubeMap_Flags :FLAG_MIPMAPS, FLAG_REPEAT, FLAG_FILTER, FLAGS_DEFAULT, 
ctypedef enum CubeMap_Side :SIDE_LEFT, SIDE_RIGHT, SIDE_BOTTOM, SIDE_TOP, SIDE_FRONT, SIDE_BACK, 
ctypedef enum CubeMap_Storage :STORAGE_RAW, STORAGE_COMPRESS_LOSSY, STORAGE_COMPRESS_LOSSLESS, 
