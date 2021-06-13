
from enum import *
from godot_api.binding_external cimport *
cimport classes.Control
cdef class Tabs(classes.Control.Control):
    pass
ctypedef enum Tabs_CloseButtonDisplayPolicy :CLOSE_BUTTON_SHOW_NEVER, CLOSE_BUTTON_SHOW_ACTIVE_ONLY, CLOSE_BUTTON_SHOW_ALWAYS, CLOSE_BUTTON_MAX, 
ctypedef enum Tabs_TabAlign :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, ALIGN_MAX, 
