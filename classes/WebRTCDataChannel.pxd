
from enum import *
from godot_api.binding_external cimport *
cimport classes.PacketPeer
cdef class WebRTCDataChannel(classes.PacketPeer.PacketPeer):
    pass
ctypedef enum WebRTCDataChannel_WriteMode :WRITE_MODE_TEXT, WRITE_MODE_BINARY, 
ctypedef enum WebRTCDataChannel_ChannelState :STATE_CONNECTING, STATE_OPEN, STATE_CLOSING, STATE_CLOSED, 
