
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
cdef godot_method_bind *bind_sky_get_radiance_size
cdef godot_method_bind *bind_sky_set_radiance_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sky_get_radiance_size = api_core.godot_method_bind_get_method('Sky', 'get_radiance_size')
  bind_sky_set_radiance_size = api_core.godot_method_bind_get_method('Sky', 'set_radiance_size')

############################Generated class###################################
cdef class Sky(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Sky")())
##################################Generated Properties#########################################
  @property
  def radiance_size(self): 
    return self.get_radiance_size()
  @radiance_size.setter 
  def radiance_size(self,value): 
    self.set_radiance_size(value)

##################################Generated Methods#########################################
  def  get_radiance_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Sky_RadianceSize* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sky_get_radiance_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_radiance_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_sky_set_radiance_size,self.godot_owner,args,NULL)
    hello('hallo2')
