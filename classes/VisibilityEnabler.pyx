
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
cimport classes.VisibilityNotifier 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visibilityenabler__node_removed
cdef godot_method_bind *bind_visibilityenabler_is_enabler_enabled
cdef godot_method_bind *bind_visibilityenabler_set_enabler
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visibilityenabler__node_removed = api_core.godot_method_bind_get_method('VisibilityEnabler', '_node_removed')
  bind_visibilityenabler_is_enabler_enabled = api_core.godot_method_bind_get_method('VisibilityEnabler', 'is_enabler_enabled')
  bind_visibilityenabler_set_enabler = api_core.godot_method_bind_get_method('VisibilityEnabler', 'set_enabler')

############################Generated class###################################
cdef class VisibilityEnabler(classes.VisibilityNotifier.VisibilityNotifier):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisibilityEnabler")())
##################################Generated Properties#########################################
  @property
  def freeze_bodies(self): 
    return self.get_freeze_bodies()
  @freeze_bodies.setter 
  def freeze_bodies(self,value): 
    self.set_freeze_bodies(value)
  @property
  def pause_animations(self): 
    return self.get_pause_animations()
  @pause_animations.setter 
  def pause_animations(self,value): 
    self.set_pause_animations(value)

##################################Generated Methods#########################################
  def  _node_removed(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler__node_removed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  is_enabler_enabled(self,  int enabler):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &enabler
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler_is_enabler_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_enabler(self,  int enabler,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &enabler
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_visibilityenabler_set_enabler,self.godot_owner,args,NULL)
    hello('hallo2')
