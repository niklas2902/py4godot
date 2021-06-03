
from enum import *
from godot_api.binding_external cimport *
cimport classes.PacketPeer
cdef class WebSocketPeer(classes.PacketPeer.PacketPeer):
    pass
ctypedef enum WriteMode :WRITE_MODE_TEXT, WRITE_MODE_BINARY, 
