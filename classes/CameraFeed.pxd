
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class CameraFeed(classes.Reference.Reference):
    pass
ctypedef enum CameraFeed_FeedDataType :FEED_NOIMAGE, FEED_RGB, FEED_YCBCR, FEED_YCBCR_SEP, 
ctypedef enum CameraFeed_FeedPosition :FEED_UNSPECIFIED, FEED_FRONT, FEED_BACK, 
