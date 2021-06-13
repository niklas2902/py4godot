
from enum import *
from godot_api.binding_external cimport *
cimport classes.BaseButton
cdef class Button(classes.BaseButton.BaseButton):
    pass
ctypedef enum Button_TextAlign :ALIGN_LEFT, ALIGN_CENTER, ALIGN_RIGHT, 
