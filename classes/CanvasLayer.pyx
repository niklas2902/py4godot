
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
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_canvaslayer_get_canvas
cdef godot_method_bind *bind_canvaslayer_get_custom_viewport
cdef godot_method_bind *bind_canvaslayer_get_follow_viewport_scale
cdef godot_method_bind *bind_canvaslayer_get_layer
cdef godot_method_bind *bind_canvaslayer_get_offset
cdef godot_method_bind *bind_canvaslayer_get_rotation
cdef godot_method_bind *bind_canvaslayer_get_rotation_degrees
cdef godot_method_bind *bind_canvaslayer_get_scale
cdef godot_method_bind *bind_canvaslayer_get_transform
cdef godot_method_bind *bind_canvaslayer_is_following_viewport
cdef godot_method_bind *bind_canvaslayer_set_custom_viewport
cdef godot_method_bind *bind_canvaslayer_set_follow_viewport
cdef godot_method_bind *bind_canvaslayer_set_follow_viewport_scale
cdef godot_method_bind *bind_canvaslayer_set_layer
cdef godot_method_bind *bind_canvaslayer_set_offset
cdef godot_method_bind *bind_canvaslayer_set_rotation
cdef godot_method_bind *bind_canvaslayer_set_rotation_degrees
cdef godot_method_bind *bind_canvaslayer_set_scale
cdef godot_method_bind *bind_canvaslayer_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_canvaslayer_get_canvas = api_core.godot_method_bind_get_method('CanvasLayer', 'get_canvas')
  bind_canvaslayer_get_custom_viewport = api_core.godot_method_bind_get_method('CanvasLayer', 'get_custom_viewport')
  bind_canvaslayer_get_follow_viewport_scale = api_core.godot_method_bind_get_method('CanvasLayer', 'get_follow_viewport_scale')
  bind_canvaslayer_get_layer = api_core.godot_method_bind_get_method('CanvasLayer', 'get_layer')
  bind_canvaslayer_get_offset = api_core.godot_method_bind_get_method('CanvasLayer', 'get_offset')
  bind_canvaslayer_get_rotation = api_core.godot_method_bind_get_method('CanvasLayer', 'get_rotation')
  bind_canvaslayer_get_rotation_degrees = api_core.godot_method_bind_get_method('CanvasLayer', 'get_rotation_degrees')
  bind_canvaslayer_get_scale = api_core.godot_method_bind_get_method('CanvasLayer', 'get_scale')
  bind_canvaslayer_get_transform = api_core.godot_method_bind_get_method('CanvasLayer', 'get_transform')
  bind_canvaslayer_is_following_viewport = api_core.godot_method_bind_get_method('CanvasLayer', 'is_following_viewport')
  bind_canvaslayer_set_custom_viewport = api_core.godot_method_bind_get_method('CanvasLayer', 'set_custom_viewport')
  bind_canvaslayer_set_follow_viewport = api_core.godot_method_bind_get_method('CanvasLayer', 'set_follow_viewport')
  bind_canvaslayer_set_follow_viewport_scale = api_core.godot_method_bind_get_method('CanvasLayer', 'set_follow_viewport_scale')
  bind_canvaslayer_set_layer = api_core.godot_method_bind_get_method('CanvasLayer', 'set_layer')
  bind_canvaslayer_set_offset = api_core.godot_method_bind_get_method('CanvasLayer', 'set_offset')
  bind_canvaslayer_set_rotation = api_core.godot_method_bind_get_method('CanvasLayer', 'set_rotation')
  bind_canvaslayer_set_rotation_degrees = api_core.godot_method_bind_get_method('CanvasLayer', 'set_rotation_degrees')
  bind_canvaslayer_set_scale = api_core.godot_method_bind_get_method('CanvasLayer', 'set_scale')
  bind_canvaslayer_set_transform = api_core.godot_method_bind_get_method('CanvasLayer', 'set_transform')

############################Generated class###################################
cdef class CanvasLayer(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CanvasLayer")())
##################################Generated Properties#########################################
  @property
  def custom_viewport(self): 
    return self.get_custom_viewport()
  @custom_viewport.setter 
  def custom_viewport(self,value): 
    self.set_custom_viewport(value)
  @property
  def follow_viewport_enable(self): 
    return self.get_follow_viewport_enable()
  @follow_viewport_enable.setter 
  def follow_viewport_enable(self,value): 
    self.set_follow_viewport_enable(value)
  @property
  def follow_viewport_scale(self): 
    return self.get_follow_viewport_scale()
  @follow_viewport_scale.setter 
  def follow_viewport_scale(self,value): 
    self.set_follow_viewport_scale(value)
  @property
  def layer(self): 
    return self.get_layer()
  @layer.setter 
  def layer(self,value): 
    self.set_layer(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
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

##################################Generated Methods#########################################
  def  get_canvas(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_canvas,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_custom_viewport(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_custom_viewport,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_follow_viewport_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_follow_viewport_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_rotation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_rotation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_rotation_degrees,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_get_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  is_following_viewport(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_canvaslayer_is_following_viewport,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_custom_viewport(self,  classes.Node.Node viewport):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = viewport.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_custom_viewport,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_follow_viewport(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_follow_viewport,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_follow_viewport_scale(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_follow_viewport_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_layer(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotation(self,  float radians):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &radians
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_rotation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotation_degrees(self,  float degrees):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &degrees
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_rotation_degrees,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scale(self,  Vector2 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform(self,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_canvaslayer_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
