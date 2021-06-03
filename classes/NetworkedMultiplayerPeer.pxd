
from enum import *
from godot_api.binding_external cimport *
cimport classes.PacketPeer
cdef class NetworkedMultiplayerPeer(classes.PacketPeer.PacketPeer):
    pass
ctypedef enum ConnectionStatus :CONNECTION_DISCONNECTED, CONNECTION_CONNECTING, CONNECTION_CONNECTED, 
ctypedef enum TransferMode :TRANSFER_MODE_UNRELIABLE, TRANSFER_MODE_UNRELIABLE_ORDERED, TRANSFER_MODE_RELIABLE, 
