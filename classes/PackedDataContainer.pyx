
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packeddatacontainer__get_data
cdef godot_method_bind *bind_packeddatacontainer__iter_get
cdef godot_method_bind *bind_packeddatacontainer__iter_init
cdef godot_method_bind *bind_packeddatacontainer__iter_next
cdef godot_method_bind *bind_packeddatacontainer__set_data
cdef godot_method_bind *bind_packeddatacontainer_pack
cdef godot_method_bind *bind_packeddatacontainer_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packeddatacontainer__get_data = api_core.godot_method_bind_get_method('PackedDataContainer', '_get_data')
  bind_packeddatacontainer__iter_get = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_get')
  bind_packeddatacontainer__iter_init = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_init')
  bind_packeddatacontainer__iter_next = api_core.godot_method_bind_get_method('PackedDataContainer', '_iter_next')
  bind_packeddatacontainer__set_data = api_core.godot_method_bind_get_method('PackedDataContainer', '_set_data')
  bind_packeddatacontainer_pack = api_core.godot_method_bind_get_method('PackedDataContainer', 'pack')
  bind_packeddatacontainer_size = api_core.godot_method_bind_get_method('PackedDataContainer', 'size')

############################Generated class###################################
cdef class PackedDataContainer(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PackedDataContainer")())
##################################Generated Properties#########################################
  @property
  def __data__(self): 
    return self.get___data__()
  @__data__.setter 
  def __data__(self,value): 
    self.set___data__(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _iter_get(self,  Variant arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_get,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  _iter_init(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_init,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  _iter_next(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__iter_next,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  _set_data(self,  PoolByteArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  pack(self,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &value._native
    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer_pack,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packeddatacontainer_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

