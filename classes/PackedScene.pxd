
from enum import *
from godot_api.binding_external cimport *
cimport classes.Resource
cdef class PackedScene(classes.Resource.Resource):
    pass
ctypedef enum GenEditState :GEN_EDIT_STATE_DISABLED, GEN_EDIT_STATE_INSTANCE, GEN_EDIT_STATE_MAIN, 
