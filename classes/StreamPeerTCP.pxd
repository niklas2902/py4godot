
from enum import *
from godot_api.binding_external cimport *
cimport classes.StreamPeer
cdef class StreamPeerTCP(classes.StreamPeer.StreamPeer):
    pass
ctypedef enum Status :STATUS_NONE, STATUS_CONNECTING, STATUS_CONNECTED, STATUS_ERROR, 
