
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class SceneState(classes.Reference.Reference):
    pass
ctypedef enum GenEditState :GEN_EDIT_STATE_DISABLED, GEN_EDIT_STATE_INSTANCE, GEN_EDIT_STATE_MAIN, 
