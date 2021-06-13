
from enum import *
from godot_api.binding_external cimport *
cimport classes.StreamPeer
cdef class StreamPeerSSL(classes.StreamPeer.StreamPeer):
    pass
ctypedef enum StreamPeerSSL_Status :STATUS_DISCONNECTED, STATUS_HANDSHAKING, STATUS_CONNECTED, STATUS_ERROR, STATUS_ERROR_HOSTNAME_MISMATCH, 
