
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class AudioServer(classes.Object.Object):
    pass
ctypedef enum AudioServer_SpeakerMode :SPEAKER_MODE_STEREO, SPEAKER_SURROUND_31, SPEAKER_SURROUND_51, SPEAKER_SURROUND_71, 
