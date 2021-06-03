
from enum import *
from godot_api.binding_external cimport *
cimport classes.Object
cdef class IP(classes.Object.Object):
    pass
ctypedef enum ResolverStatus :RESOLVER_STATUS_NONE, RESOLVER_STATUS_WAITING, RESOLVER_STATUS_DONE, RESOLVER_STATUS_ERROR, 
ctypedef enum Type :TYPE_NONE, TYPE_IPV4, TYPE_IPV6, TYPE_ANY, 
