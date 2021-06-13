
from enum import *
from godot_api.binding_external cimport *
cimport classes.AudioStream
cdef class AudioStreamSample(classes.AudioStream.AudioStream):
    pass
ctypedef enum AudioStreamSample_LoopMode :LOOP_DISABLED, LOOP_FORWARD, LOOP_PING_PONG, LOOP_BACKWARD, 
ctypedef enum AudioStreamSample_Format :FORMAT_8_BITS, FORMAT_16_BITS, FORMAT_IMA_ADPCM, 
