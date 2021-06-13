
from enum import *
from godot_api.binding_external cimport *
cimport classes.NetworkedMultiplayerPeer
cdef class NetworkedMultiplayerENet(classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer):
    pass
ctypedef enum NetworkedMultiplayerENet_CompressionMode :COMPRESS_NONE, COMPRESS_RANGE_CODER, COMPRESS_FASTLZ, COMPRESS_ZLIB, COMPRESS_ZSTD, 
