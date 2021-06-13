
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptYield(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum VisualScriptYield_YieldMode :YIELD_FRAME, YIELD_PHYSICS_FRAME, YIELD_WAIT, 
