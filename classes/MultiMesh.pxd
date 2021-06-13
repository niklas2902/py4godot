
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class MultiMesh(classes.Resource.Resource):
    pass
ctypedef enum MultiMesh_TransformFormat :TRANSFORM_2D, TRANSFORM_3D, 
ctypedef enum MultiMesh_CustomDataFormat :CUSTOM_DATA_NONE, CUSTOM_DATA_8BIT, CUSTOM_DATA_FLOAT, 
ctypedef enum MultiMesh_ColorFormat :COLOR_NONE, COLOR_8BIT, COLOR_FLOAT, 
