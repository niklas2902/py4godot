
from enum import *
from godot_api.binding_external cimport *
cimport classes.Reference
cdef class HashingContext(classes.Reference.Reference):
    pass
ctypedef enum HashType :HASH_MD5, HASH_SHA1, HASH_SHA256, 
