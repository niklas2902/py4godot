
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
cimport classes.AnimationNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeadd3_is_using_sync
cdef godot_method_bind *bind_animationnodeadd3_set_use_sync
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeadd3_is_using_sync = api_core.godot_method_bind_get_method('AnimationNodeAdd3', 'is_using_sync')
  bind_animationnodeadd3_set_use_sync = api_core.godot_method_bind_get_method('AnimationNodeAdd3', 'set_use_sync')

############################Generated class###################################
cdef class AnimationNodeAdd3(classes.AnimationNode.AnimationNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeAdd3")())
##################################Generated Properties#########################################
  @property
  def sync(self): 
    return self.get_sync()
  @sync.setter 
  def sync(self,value): 
    self.set_sync(value)

##################################Generated Methods#########################################
  def  is_using_sync(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodeadd3_is_using_sync,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_use_sync(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationnodeadd3_set_use_sync,self.godot_owner,args,NULL)
    hello('hallo2')
