# distutils: language=c++
from py4godot.classes.core cimport Vector3
from libcpp.memory cimport shared_ptr, allocator
from py4godot.classes.cpp_bridge cimport Vector3 as CPPVector3

cdef class ConstantVector3(Vector3):
  pass
