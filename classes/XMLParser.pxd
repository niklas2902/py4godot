
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class XMLParser(classes.Reference.Reference):
    pass
ctypedef enum NodeType :NODE_NONE, NODE_ELEMENT, NODE_ELEMENT_END, NODE_TEXT, NODE_COMMENT, NODE_CDATA, NODE_UNKNOWN, 
