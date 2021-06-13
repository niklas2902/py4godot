
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class CameraServer(classes.Object.Object):
    pass
ctypedef enum CameraServer_FeedImage :FEED_RGBA_IMAGE, FEED_YCBCR_IMAGE, FEED_Y_IMAGE, FEED_CBCR_IMAGE, 
