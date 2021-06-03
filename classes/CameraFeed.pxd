
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class CameraFeed(classes.Reference.Reference):
    pass
ctypedef enum FeedDataType :FEED_NOIMAGE, FEED_RGB, FEED_YCBCR, FEED_YCBCR_SEP, 
ctypedef enum FeedPosition :FEED_UNSPECIFIED, FEED_FRONT, FEED_BACK, 
