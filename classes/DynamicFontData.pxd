
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class DynamicFontData(classes.Resource.Resource):
    pass
ctypedef enum DynamicFontData_Hinting :HINTING_NONE, HINTING_LIGHT, HINTING_NORMAL, 
