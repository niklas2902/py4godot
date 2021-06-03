
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class UPNPDevice(classes.Reference.Reference):
    pass
ctypedef enum IGDStatus :IGD_STATUS_OK, IGD_STATUS_HTTP_ERROR, IGD_STATUS_HTTP_EMPTY, IGD_STATUS_NO_URLS, IGD_STATUS_NO_IGD, IGD_STATUS_DISCONNECTED, IGD_STATUS_UNKNOWN_DEVICE, IGD_STATUS_INVALID_CONTROL, IGD_STATUS_MALLOC_ERROR, IGD_STATUS_UNKNOWN_ERROR, 
