
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
cdef godot_method_bind *bind_physicsmaterial_get_bounce
cdef godot_method_bind *bind_physicsmaterial_get_friction
cdef godot_method_bind *bind_physicsmaterial_is_absorbent
cdef godot_method_bind *bind_physicsmaterial_is_rough
cdef godot_method_bind *bind_physicsmaterial_set_absorbent
cdef godot_method_bind *bind_physicsmaterial_set_bounce
cdef godot_method_bind *bind_physicsmaterial_set_friction
cdef godot_method_bind *bind_physicsmaterial_set_rough
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsmaterial_get_bounce = api_core.godot_method_bind_get_method('PhysicsMaterial', 'get_bounce')
  bind_physicsmaterial_get_friction = api_core.godot_method_bind_get_method('PhysicsMaterial', 'get_friction')
  bind_physicsmaterial_is_absorbent = api_core.godot_method_bind_get_method('PhysicsMaterial', 'is_absorbent')
  bind_physicsmaterial_is_rough = api_core.godot_method_bind_get_method('PhysicsMaterial', 'is_rough')
  bind_physicsmaterial_set_absorbent = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_absorbent')
  bind_physicsmaterial_set_bounce = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_bounce')
  bind_physicsmaterial_set_friction = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_friction')
  bind_physicsmaterial_set_rough = api_core.godot_method_bind_get_method('PhysicsMaterial', 'set_rough')

############################Generated class###################################
cdef class PhysicsMaterial(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsMaterial")())
##################################Generated Properties#########################################
  @property
  def absorbent(self): 
    return self.get_absorbent()
  @absorbent.setter 
  def absorbent(self,value): 
    self.set_absorbent(value)
  @property
  def bounce(self): 
    return self.get_bounce()
  @bounce.setter 
  def bounce(self,value): 
    self.set_bounce(value)
  @property
  def friction(self): 
    return self.get_friction()
  @friction.setter 
  def friction(self,value): 
    self.set_friction(value)
  @property
  def rough(self): 
    return self.get_rough()
  @rough.setter 
  def rough(self,value): 
    self.set_rough(value)

##################################Generated Methods#########################################
  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_get_bounce,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_get_friction,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_absorbent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_is_absorbent,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_rough(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_is_rough,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_absorbent(self,  bool absorbent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &absorbent
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_absorbent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bounce(self,  float bounce):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bounce
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_bounce,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_friction(self,  float friction):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &friction
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_friction,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rough(self,  bool rough):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rough
    api_core.godot_method_bind_ptrcall(bind_physicsmaterial_set_rough,self.godot_owner,args,NULL)
    hello('hallo2')
