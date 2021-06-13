
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Node
cimport classes.CanvasItem 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_node2d_apply_scale
cdef godot_method_bind *bind_node2d_get_angle_to
cdef godot_method_bind *bind_node2d_get_global_position
cdef godot_method_bind *bind_node2d_get_global_rotation
cdef godot_method_bind *bind_node2d_get_global_rotation_degrees
cdef godot_method_bind *bind_node2d_get_global_scale
cdef godot_method_bind *bind_node2d_get_position
cdef godot_method_bind *bind_node2d_get_relative_transform_to_parent
cdef godot_method_bind *bind_node2d_get_rotation
cdef godot_method_bind *bind_node2d_get_rotation_degrees
cdef godot_method_bind *bind_node2d_get_scale
cdef godot_method_bind *bind_node2d_get_z_index
cdef godot_method_bind *bind_node2d_global_translate
cdef godot_method_bind *bind_node2d_is_z_relative
cdef godot_method_bind *bind_node2d_look_at
cdef godot_method_bind *bind_node2d_move_local_x
cdef godot_method_bind *bind_node2d_move_local_y
cdef godot_method_bind *bind_node2d_rotate
cdef godot_method_bind *bind_node2d_set_global_position
cdef godot_method_bind *bind_node2d_set_global_rotation
cdef godot_method_bind *bind_node2d_set_global_rotation_degrees
cdef godot_method_bind *bind_node2d_set_global_scale
cdef godot_method_bind *bind_node2d_set_global_transform
cdef godot_method_bind *bind_node2d_set_position
cdef godot_method_bind *bind_node2d_set_rotation
cdef godot_method_bind *bind_node2d_set_rotation_degrees
cdef godot_method_bind *bind_node2d_set_scale
cdef godot_method_bind *bind_node2d_set_transform
cdef godot_method_bind *bind_node2d_set_z_as_relative
cdef godot_method_bind *bind_node2d_set_z_index
cdef godot_method_bind *bind_node2d_to_global
cdef godot_method_bind *bind_node2d_to_local
cdef godot_method_bind *bind_node2d_translate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_node2d_apply_scale = api_core.godot_method_bind_get_method('Node2D', 'apply_scale')
  bind_node2d_get_angle_to = api_core.godot_method_bind_get_method('Node2D', 'get_angle_to')
  bind_node2d_get_global_position = api_core.godot_method_bind_get_method('Node2D', 'get_global_position')
  bind_node2d_get_global_rotation = api_core.godot_method_bind_get_method('Node2D', 'get_global_rotation')
  bind_node2d_get_global_rotation_degrees = api_core.godot_method_bind_get_method('Node2D', 'get_global_rotation_degrees')
  bind_node2d_get_global_scale = api_core.godot_method_bind_get_method('Node2D', 'get_global_scale')
  bind_node2d_get_position = api_core.godot_method_bind_get_method('Node2D', 'get_position')
  bind_node2d_get_relative_transform_to_parent = api_core.godot_method_bind_get_method('Node2D', 'get_relative_transform_to_parent')
  bind_node2d_get_rotation = api_core.godot_method_bind_get_method('Node2D', 'get_rotation')
  bind_node2d_get_rotation_degrees = api_core.godot_method_bind_get_method('Node2D', 'get_rotation_degrees')
  bind_node2d_get_scale = api_core.godot_method_bind_get_method('Node2D', 'get_scale')
  bind_node2d_get_z_index = api_core.godot_method_bind_get_method('Node2D', 'get_z_index')
  bind_node2d_global_translate = api_core.godot_method_bind_get_method('Node2D', 'global_translate')
  bind_node2d_is_z_relative = api_core.godot_method_bind_get_method('Node2D', 'is_z_relative')
  bind_node2d_look_at = api_core.godot_method_bind_get_method('Node2D', 'look_at')
  bind_node2d_move_local_x = api_core.godot_method_bind_get_method('Node2D', 'move_local_x')
  bind_node2d_move_local_y = api_core.godot_method_bind_get_method('Node2D', 'move_local_y')
  bind_node2d_rotate = api_core.godot_method_bind_get_method('Node2D', 'rotate')
  bind_node2d_set_global_position = api_core.godot_method_bind_get_method('Node2D', 'set_global_position')
  bind_node2d_set_global_rotation = api_core.godot_method_bind_get_method('Node2D', 'set_global_rotation')
  bind_node2d_set_global_rotation_degrees = api_core.godot_method_bind_get_method('Node2D', 'set_global_rotation_degrees')
  bind_node2d_set_global_scale = api_core.godot_method_bind_get_method('Node2D', 'set_global_scale')
  bind_node2d_set_global_transform = api_core.godot_method_bind_get_method('Node2D', 'set_global_transform')
  bind_node2d_set_position = api_core.godot_method_bind_get_method('Node2D', 'set_position')
  bind_node2d_set_rotation = api_core.godot_method_bind_get_method('Node2D', 'set_rotation')
  bind_node2d_set_rotation_degrees = api_core.godot_method_bind_get_method('Node2D', 'set_rotation_degrees')
  bind_node2d_set_scale = api_core.godot_method_bind_get_method('Node2D', 'set_scale')
  bind_node2d_set_transform = api_core.godot_method_bind_get_method('Node2D', 'set_transform')
  bind_node2d_set_z_as_relative = api_core.godot_method_bind_get_method('Node2D', 'set_z_as_relative')
  bind_node2d_set_z_index = api_core.godot_method_bind_get_method('Node2D', 'set_z_index')
  bind_node2d_to_global = api_core.godot_method_bind_get_method('Node2D', 'to_global')
  bind_node2d_to_local = api_core.godot_method_bind_get_method('Node2D', 'to_local')
  bind_node2d_translate = api_core.godot_method_bind_get_method('Node2D', 'translate')

############################Generated class###################################
cdef class Node2D(classes.CanvasItem.CanvasItem):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Node2D")())
##################################Generated Properties#########################################
  @property
  def global_position(self): 
    return self.get_global_position()
  @global_position.setter 
  def global_position(self,value): 
    self.set_global_position(value)
  @property
  def global_rotation(self): 
    return self.get_global_rotation()
  @global_rotation.setter 
  def global_rotation(self,value): 
    self.set_global_rotation(value)
  @property
  def global_rotation_degrees(self): 
    return self.get_global_rotation_degrees()
  @global_rotation_degrees.setter 
  def global_rotation_degrees(self,value): 
    self.set_global_rotation_degrees(value)
  @property
  def global_scale(self): 
    return self.get_global_scale()
  @global_scale.setter 
  def global_scale(self,value): 
    self.set_global_scale(value)
  @property
  def global_transform(self): 
    return self.get_global_transform()
  @global_transform.setter 
  def global_transform(self,value): 
    self.set_global_transform(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)
  @property
  def rotation(self): 
    return self.get_rotation()
  @rotation.setter 
  def rotation(self,value): 
    self.set_rotation(value)
  @property
  def rotation_degrees(self): 
    return self.get_rotation_degrees()
  @rotation_degrees.setter 
  def rotation_degrees(self,value): 
    self.set_rotation_degrees(value)
  @property
  def scale(self): 
    return self.get_scale()
  @scale.setter 
  def scale(self,value): 
    self.set_scale(value)
  @property
  def transform(self): 
    return self.get_transform()
  @transform.setter 
  def transform(self,value): 
    self.set_transform(value)
  @property
  def z_as_relative(self): 
    return self.get_z_as_relative()
  @z_as_relative.setter 
  def z_as_relative(self,value): 
    self.set_z_as_relative(value)
  @property
  def z_index(self): 
    return self.get_z_index()
  @z_index.setter 
  def z_index(self,value): 
    self.set_z_index(value)

##################################Generated Methods#########################################
  def  apply_scale(self,  Vector2 ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ratio._native
    api_core.godot_method_bind_ptrcall(bind_node2d_apply_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_angle_to(self,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &point._native
    api_core.godot_method_bind_ptrcall(bind_node2d_get_angle_to,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_global_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_global_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_global_rotation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_global_rotation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_global_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_global_rotation_degrees,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_global_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_global_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_relative_transform_to_parent(self,  classes.Node.Node parent):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[1]

    args[0] = parent.godot_owner
    api_core.godot_method_bind_ptrcall(bind_node2d_get_relative_transform_to_parent,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_rotation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_rotation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_rotation_degrees,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_z_index(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_get_z_index,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  global_translate(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_node2d_global_translate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  is_z_relative(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_node2d_is_z_relative,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  look_at(self,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &point._native
    api_core.godot_method_bind_ptrcall(bind_node2d_look_at,self.godot_owner,args,NULL)
    hello('hallo2')
  def  move_local_x(self,  float delta,  bool scaled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &delta
    args[1] = &scaled
    api_core.godot_method_bind_ptrcall(bind_node2d_move_local_x,self.godot_owner,args,NULL)
    hello('hallo2')
  def  move_local_y(self,  float delta,  bool scaled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &delta
    args[1] = &scaled
    api_core.godot_method_bind_ptrcall(bind_node2d_move_local_y,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rotate(self,  float radians):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radians
    api_core.godot_method_bind_ptrcall(bind_node2d_rotate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_global_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_rotation(self,  float radians):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radians
    api_core.godot_method_bind_ptrcall(bind_node2d_set_global_rotation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_rotation_degrees(self,  float degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &degrees
    api_core.godot_method_bind_ptrcall(bind_node2d_set_global_rotation_degrees,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_scale(self,  Vector2 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_global_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_transform(self,  Transform2D xform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &xform._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_global_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_position(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotation(self,  float radians):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radians
    api_core.godot_method_bind_ptrcall(bind_node2d_set_rotation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotation_degrees(self,  float degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &degrees
    api_core.godot_method_bind_ptrcall(bind_node2d_set_rotation_degrees,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scale(self,  Vector2 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform(self,  Transform2D xform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &xform._native
    api_core.godot_method_bind_ptrcall(bind_node2d_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_z_as_relative(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_node2d_set_z_as_relative,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_z_index(self,  int z_index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &z_index
    api_core.godot_method_bind_ptrcall(bind_node2d_set_z_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  to_global(self,  Vector2 local_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &local_point._native
    api_core.godot_method_bind_ptrcall(bind_node2d_to_global,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  to_local(self,  Vector2 global_point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &global_point._native
    api_core.godot_method_bind_ptrcall(bind_node2d_to_local,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  translate(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_node2d_translate,self.godot_owner,args,NULL)
    hello('hallo2')
