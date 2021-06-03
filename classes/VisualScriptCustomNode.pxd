
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptCustomNode(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum StartMode :START_MODE_BEGIN_SEQUENCE, START_MODE_CONTINUE_SEQUENCE, START_MODE_RESUME_YIELD, 
