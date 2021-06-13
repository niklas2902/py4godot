
from enum import *
from godot_api.binding_external cimport *
cimport classes.Node2D
cdef class BackBufferCopy(classes.Node2D.Node2D):
    pass
ctypedef enum BackBufferCopy_CopyMode :COPY_MODE_DISABLED, COPY_MODE_RECT, COPY_MODE_VIEWPORT, 
