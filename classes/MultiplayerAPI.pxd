
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class MultiplayerAPI(classes.Reference.Reference):
    pass
ctypedef enum MultiplayerAPI_RPCMode :RPC_MODE_DISABLED, RPC_MODE_REMOTE, RPC_MODE_MASTER, RPC_MODE_PUPPET, RPC_MODE_SLAVE, RPC_MODE_REMOTESYNC, RPC_MODE_SYNC, RPC_MODE_MASTERSYNC, RPC_MODE_PUPPETSYNC, 
