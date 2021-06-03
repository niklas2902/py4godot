
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class UndoRedo(classes.Object.Object):
    pass
ctypedef enum MergeMode :MERGE_DISABLE, MERGE_ENDS, MERGE_ALL, 
