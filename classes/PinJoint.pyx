
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
cimport classes.Joint 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pinjoint_get_param
cdef godot_method_bind *bind_pinjoint_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pinjoint_get_param = api_core.godot_method_bind_get_method('PinJoint', 'get_param')
  bind_pinjoint_set_param = api_core.godot_method_bind_get_method('PinJoint', 'set_param')

############################Generated class###################################
cdef class PinJoint(classes.Joint.Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PinJoint")())
##################################Generated Properties#########################################
  @property
  def params_bias(self): 
    return self.get_params_bias()
  @params_bias.setter 
  def params_bias(self,value): 
    self.set_params_bias(value)
  @property
  def params_damping(self): 
    return self.get_params_damping()
  @params_damping.setter 
  def params_damping(self,value): 
    self.set_params_damping(value)
  @property
  def params_impulse_clamp(self): 
    return self.get_params_impulse_clamp()
  @params_impulse_clamp.setter 
  def params_impulse_clamp(self,value): 
    self.set_params_impulse_clamp(value)

##################################Generated Methods#########################################
  def  get_param(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_pinjoint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_param(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_pinjoint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
