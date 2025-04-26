# distutils: language=c++
from py4godot.classes.core import Vector2

cdef class ConstantVector3(Vector3):

  @staticmethod
  def new3(float x, float y, float z):

    cdef ConstantVector3 _class = ConstantVector3.__new__(ConstantVector3)
    cdef shared_ptr[CPPVector3] vector3 = CPPVector3.py_new3(x, y, z)
    vector3.get().set_shouldBeDeleted(False)
    _class.Vector3_internal_class_ptr = vector3
    return _class


  @property
  def x(self):
    cdef double _ret = self.Vector3_internal_class_ptr.get().py_member_get_x()
    return _ret

  @x.setter
  def x(self, double value):
    raise Exception("setting x is not allowed for ConstantVector3")
  @property
  def y(self):
    cdef double _ret = self.Vector3_internal_class_ptr.get().py_member_get_y()
    return _ret

  @y.setter
  def y(self, double value):
    raise Exception("setting y is not allowed for ConstantVector3")
  @property
  def z(self):
    cdef double _ret = self.Vector3_internal_class_ptr.get().py_member_get_z()
    return _ret

  @z.setter
  def z(self, double value):
    raise Exception("setting z is not allowed for ConstantVector3")

VECTOR3_FORWARD = ConstantVector3.new3(0,0,1)
VECTOR3_RIGHT = ConstantVector3.new3(1,0,0)
VECTOR3_UP = ConstantVector3.new3(0,1,0)

VECTOR3_BACK = ConstantVector3.new3(0,0,-1)
VECTOR3_LEFT = ConstantVector3.new3(-1,0,0)
VECTOR3_DOWN = ConstantVector3.new3(0,-1,0)

VECTOR3_X_AXIS = ConstantVector3.new3(1,0,0)
VECTOR3_Y_AXIS = ConstantVector3.new3(0,1,0)
VECTOR3_Z_AXIS = ConstantVector3.new3(0,0,1)

cdef class ConstantVector2(Vector2):
  @staticmethod
  def new3(float x, float y):
    cdef ConstantVector2 _class = ConstantVector2.__new__(ConstantVector2)
    cdef shared_ptr[CPPVector2] vector2 = CPPVector2.py_new3(x, y)
    vector2.get().set_shouldBeDeleted(False)
    _class.Vector2_internal_class_ptr = vector2
    return _class

  @property
  def x(self):
    cdef double _ret = self.Vector2_internal_class_ptr.get().py_member_get_x()
    return _ret

  @x.setter
  def x(self, double value):
    raise Exception("setting x is not allowed for ConstantVector2")

  @property
  def y(self):
    cdef double _ret = self.Vector2_internal_class_ptr.get().py_member_get_y()
    return _ret

  @y.setter
  def y(self, double value):
    raise Exception("setting y is not allowed for ConstantVector2")

# Vector2 directional constants
VECTOR2_RIGHT = ConstantVector2.new3(1, 0)
VECTOR2_UP = ConstantVector2.new3(0, 1)
VECTOR2_LEFT = ConstantVector2.new3(-1, 0)
VECTOR2_DOWN = ConstantVector2.new3(0, -1)

# Vector2 basis vectors
VECTOR2_X_AXIS = ConstantVector2.new3(1, 0)
VECTOR2_Y_AXIS = ConstantVector2.new3(0, 1)

# Additional useful Vector2 constants
VECTOR2_ONE = ConstantVector2.new3(1, 1)
VECTOR2_ZERO = ConstantVector2.new3(0, 0)

