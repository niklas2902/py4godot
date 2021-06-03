
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptPropertySet(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum AssignOp :ASSIGN_OP_NONE, ASSIGN_OP_ADD, ASSIGN_OP_SUB, ASSIGN_OP_MUL, ASSIGN_OP_DIV, ASSIGN_OP_MOD, ASSIGN_OP_SHIFT_LEFT, ASSIGN_OP_SHIFT_RIGHT, ASSIGN_OP_BIT_AND, ASSIGN_OP_BIT_OR, ASSIGN_OP_BIT_XOR, 
ctypedef enum CallMode :CALL_MODE_SELF, CALL_MODE_NODE_PATH, CALL_MODE_INSTANCE, CALL_MODE_BASIC_TYPE, 
