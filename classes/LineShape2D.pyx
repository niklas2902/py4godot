
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
cimport classes.Shape2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_lineshape2d_get_d
cdef godot_method_bind *bind_lineshape2d_get_normal
cdef godot_method_bind *bind_lineshape2d_set_d
cdef godot_method_bind *bind_lineshape2d_set_normal
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_lineshape2d_get_d = api_core.godot_method_bind_get_method('LineShape2D', 'get_d')
  bind_lineshape2d_get_normal = api_core.godot_method_bind_get_method('LineShape2D', 'get_normal')
  bind_lineshape2d_set_d = api_core.godot_method_bind_get_method('LineShape2D', 'set_d')
  bind_lineshape2d_set_normal = api_core.godot_method_bind_get_method('LineShape2D', 'set_normal')

############################Generated class###################################
cdef class LineShape2D(classes.Shape2D.Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LineShape2D")())
##################################Generated Properties#########################################
  @property
  def d(self): 
    return self.get_d()
  @d.setter 
  def d(self,value): 
    self.set_d(value)
  @property
  def normal(self): 
    return self.get_normal()
  @normal.setter 
  def normal(self,value): 
    self.set_normal(value)

##################################Generated Methods#########################################
  def  get_d(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineshape2d_get_d,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_normal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lineshape2d_get_normal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_d(self,  float d):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &d
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_set_d,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal(self,  Vector2 normal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &normal._native
    api_core.godot_method_bind_ptrcall(bind_lineshape2d_set_normal,self.godot_owner,args,NULL)
    hello('hallo2')
