
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class Node(classes.Object.Object):
    pass
ctypedef enum PauseMode :PAUSE_MODE_INHERIT, PAUSE_MODE_STOP, PAUSE_MODE_PROCESS, 
ctypedef enum DuplicateFlags :DUPLICATE_SIGNALS, DUPLICATE_GROUPS, DUPLICATE_SCRIPTS, DUPLICATE_USE_INSTANCING, 
