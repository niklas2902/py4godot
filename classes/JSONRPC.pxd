
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class JSONRPC(classes.Object.Object):
    pass
ctypedef enum JSONRPC_ErrorCode :PARSE_ERROR, INTERNAL_ERROR, INVALID_PARAMS, METHOD_NOT_FOUND, INVALID_REQUEST, 
