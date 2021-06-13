
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class Tree(classes.Control.Control):
    pass
ctypedef enum Tree_SelectMode :SELECT_SINGLE, SELECT_ROW, SELECT_MULTI, 
ctypedef enum Tree_DropModeFlags :DROP_MODE_DISABLED, DROP_MODE_ON_ITEM, DROP_MODE_INBETWEEN, 
