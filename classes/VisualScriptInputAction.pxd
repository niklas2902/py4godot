
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptInputAction(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum Mode :MODE_PRESSED, MODE_RELEASED, MODE_JUST_PRESSED, MODE_JUST_RELEASED, 
