
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gradient_add_point
cdef godot_method_bind *bind_gradient_get_color
cdef godot_method_bind *bind_gradient_get_colors
cdef godot_method_bind *bind_gradient_get_offset
cdef godot_method_bind *bind_gradient_get_offsets
cdef godot_method_bind *bind_gradient_get_point_count
cdef godot_method_bind *bind_gradient_interpolate
cdef godot_method_bind *bind_gradient_remove_point
cdef godot_method_bind *bind_gradient_set_color
cdef godot_method_bind *bind_gradient_set_colors
cdef godot_method_bind *bind_gradient_set_offset
cdef godot_method_bind *bind_gradient_set_offsets
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gradient_add_point = api_core.godot_method_bind_get_method('Gradient', 'add_point')
  bind_gradient_get_color = api_core.godot_method_bind_get_method('Gradient', 'get_color')
  bind_gradient_get_colors = api_core.godot_method_bind_get_method('Gradient', 'get_colors')
  bind_gradient_get_offset = api_core.godot_method_bind_get_method('Gradient', 'get_offset')
  bind_gradient_get_offsets = api_core.godot_method_bind_get_method('Gradient', 'get_offsets')
  bind_gradient_get_point_count = api_core.godot_method_bind_get_method('Gradient', 'get_point_count')
  bind_gradient_interpolate = api_core.godot_method_bind_get_method('Gradient', 'interpolate')
  bind_gradient_remove_point = api_core.godot_method_bind_get_method('Gradient', 'remove_point')
  bind_gradient_set_color = api_core.godot_method_bind_get_method('Gradient', 'set_color')
  bind_gradient_set_colors = api_core.godot_method_bind_get_method('Gradient', 'set_colors')
  bind_gradient_set_offset = api_core.godot_method_bind_get_method('Gradient', 'set_offset')
  bind_gradient_set_offsets = api_core.godot_method_bind_get_method('Gradient', 'set_offsets')

############################Generated class###################################
cdef class Gradient(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Gradient")())
##################################Generated Properties#########################################
  @property
  def colors(self): 
    return self.get_colors()
  @colors.setter 
  def colors(self,value): 
    self.set_colors(value)
  @property
  def offsets(self): 
    return self.get_offsets()
  @offsets.setter 
  def offsets(self,value): 
    self.set_offsets(value)

##################################Generated Methods#########################################
  def  add_point(self,  float offset,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &offset
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_gradient_add_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_color(self,  int point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &point
    api_core.godot_method_bind_ptrcall(bind_gradient_get_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_colors(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gradient_get_colors,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_offset(self,  int point):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &point
    api_core.godot_method_bind_ptrcall(bind_gradient_get_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offsets(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gradient_get_offsets,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gradient_get_point_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate(self,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_gradient_interpolate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  remove_point(self,  int offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_gradient_remove_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_color(self,  int point,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &point
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_gradient_set_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_colors(self,  PoolColorArray colors):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &colors._native
    api_core.godot_method_bind_ptrcall(bind_gradient_set_colors,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  int point,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &point
    args[1] = &offset
    api_core.godot_method_bind_ptrcall(bind_gradient_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offsets(self,  PoolRealArray offsets):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offsets._native
    api_core.godot_method_bind_ptrcall(bind_gradient_set_offsets,self.godot_owner,args,NULL)
    hello('hallo2')
