# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *

cdef class MethodInfo(object):

    def __init__(self, num_args, num_default_args):
        self.num_args = num_args
        self.num_default_args = num_default_args