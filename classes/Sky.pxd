
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class Sky(classes.Resource.Resource):
    pass
ctypedef enum RadianceSize :RADIANCE_SIZE_32, RADIANCE_SIZE_64, RADIANCE_SIZE_128, RADIANCE_SIZE_256, RADIANCE_SIZE_512, RADIANCE_SIZE_1024, RADIANCE_SIZE_2048, RADIANCE_SIZE_MAX, 
