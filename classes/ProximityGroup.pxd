
from enum import *
from godot_api.binding_external cimport *
cimport classes.Spatial
cdef class ProximityGroup(classes.Spatial.Spatial):
    pass
ctypedef enum ProximityGroup_DispatchMode :MODE_PROXY, MODE_SIGNAL, 
