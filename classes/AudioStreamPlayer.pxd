
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node
cdef class AudioStreamPlayer(classes.Node.Node):
    pass
ctypedef enum MixTarget :MIX_TARGET_STEREO, MIX_TARGET_SURROUND, MIX_TARGET_CENTER, 
