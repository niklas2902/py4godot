
from enum import *
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cdef class VisualScriptFunctionCall(classes.VisualScriptNode.VisualScriptNode):
    pass
ctypedef enum RPCCallMode :RPC_DISABLED, RPC_RELIABLE, RPC_UNRELIABLE, RPC_RELIABLE_TO_ID, RPC_UNRELIABLE_TO_ID, 
ctypedef enum CallMode :CALL_MODE_SELF, CALL_MODE_NODE_PATH, CALL_MODE_INSTANCE, CALL_MODE_BASIC_TYPE, CALL_MODE_SINGLETON, 
