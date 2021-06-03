
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class Label(classes.Control.Control):
    pass
ctypedef enum Align :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, ALIGN_FILL, 
ctypedef enum VAlign :VALIGN_TOP, VALIGN_CENTER, VALIGN_BOTTOM, VALIGN_FILL, 
