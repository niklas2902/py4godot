
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class WebRTCPeerConnection(classes.Reference.Reference):
    pass
ctypedef enum WebRTCPeerConnection_ConnectionState :STATE_NEW, STATE_CONNECTING, STATE_CONNECTED, STATE_DISCONNECTED, STATE_FAILED, STATE_CLOSED, 
