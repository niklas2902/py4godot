# distutils: language=c++
from py4godot.classes.core cimport Vector3, Vector2
from libcpp.memory cimport shared_ptr, allocator
from py4godot.classes.cpp_bridge cimport Vector3 as CPPVector3
from py4godot.classes.cpp_bridge cimport Vector2 as CPPVector2

cdef class ConstantVector3(Vector3):
  pass
cdef class ConstantVector2(Vector2):
  pass
