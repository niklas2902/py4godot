
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class LineEdit(classes.Control.Control):
    pass
ctypedef enum Align :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, ALIGN_FILL, 
ctypedef enum MenuItems :MENU_CUT, MENU_COPY, MENU_PASTE, MENU_CLEAR, MENU_SELECT_ALL, MENU_UNDO, MENU_REDO, MENU_MAX, 
