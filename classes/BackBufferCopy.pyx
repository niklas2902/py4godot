
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_backbuffercopy_get_copy_mode
cdef godot_method_bind *bind_backbuffercopy_get_rect
cdef godot_method_bind *bind_backbuffercopy_set_copy_mode
cdef godot_method_bind *bind_backbuffercopy_set_rect
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_backbuffercopy_get_copy_mode = api_core.godot_method_bind_get_method('BackBufferCopy', 'get_copy_mode')
  bind_backbuffercopy_get_rect = api_core.godot_method_bind_get_method('BackBufferCopy', 'get_rect')
  bind_backbuffercopy_set_copy_mode = api_core.godot_method_bind_get_method('BackBufferCopy', 'set_copy_mode')
  bind_backbuffercopy_set_rect = api_core.godot_method_bind_get_method('BackBufferCopy', 'set_rect')

############################Generated class###################################
cdef class BackBufferCopy(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BackBufferCopy")())
##################################Generated Properties#########################################
  @property
  def copy_mode(self): 
    return self.get_copy_mode()
  @copy_mode.setter 
  def copy_mode(self,value): 
    self.set_copy_mode(value)
  @property
  def rect(self): 
    return self.get_rect()
  @rect.setter 
  def rect(self,value): 
    self.set_rect(value)

##################################Generated Methods#########################################
  def  get_copy_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CopyMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_get_copy_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_get_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  set_copy_mode(self,  int copy_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &copy_mode
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_set_copy_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_backbuffercopy_set_rect,self.godot_owner,args,NULL)
    hello('hallo2')
