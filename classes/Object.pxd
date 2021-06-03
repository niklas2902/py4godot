
from enum import *
from godot_api.binding_external cimport *
from utils.Wrapper cimport *
cdef class Object(Wrapper):
    pass
ctypedef enum ConnectFlags :CONNECT_DEFERRED, CONNECT_PERSIST, CONNECT_ONESHOT, CONNECT_REFERENCE_COUNTED, 
