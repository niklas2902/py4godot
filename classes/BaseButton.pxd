
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class BaseButton(classes.Control.Control):
    pass
ctypedef enum ActionMode :ACTION_MODE_BUTTON_PRESS, ACTION_MODE_BUTTON_RELEASE, 
ctypedef enum DrawMode :DRAW_NORMAL, DRAW_PRESSED, DRAW_HOVER, DRAW_DISABLED, DRAW_HOVER_PRESSED, 
