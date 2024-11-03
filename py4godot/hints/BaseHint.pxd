# distutils: language=c++
cdef class BaseHint(object):
    cdef int hint
    cdef str hint_string