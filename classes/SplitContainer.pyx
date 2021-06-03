
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
cimport classes.InputEvent
cimport classes.Container 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_splitcontainer__gui_input
cdef godot_method_bind *bind_splitcontainer_clamp_split_offset
cdef godot_method_bind *bind_splitcontainer_get_dragger_visibility
cdef godot_method_bind *bind_splitcontainer_get_split_offset
cdef godot_method_bind *bind_splitcontainer_is_collapsed
cdef godot_method_bind *bind_splitcontainer_set_collapsed
cdef godot_method_bind *bind_splitcontainer_set_dragger_visibility
cdef godot_method_bind *bind_splitcontainer_set_split_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_splitcontainer__gui_input = api_core.godot_method_bind_get_method('SplitContainer', '_gui_input')
  bind_splitcontainer_clamp_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'clamp_split_offset')
  bind_splitcontainer_get_dragger_visibility = api_core.godot_method_bind_get_method('SplitContainer', 'get_dragger_visibility')
  bind_splitcontainer_get_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'get_split_offset')
  bind_splitcontainer_is_collapsed = api_core.godot_method_bind_get_method('SplitContainer', 'is_collapsed')
  bind_splitcontainer_set_collapsed = api_core.godot_method_bind_get_method('SplitContainer', 'set_collapsed')
  bind_splitcontainer_set_dragger_visibility = api_core.godot_method_bind_get_method('SplitContainer', 'set_dragger_visibility')
  bind_splitcontainer_set_split_offset = api_core.godot_method_bind_get_method('SplitContainer', 'set_split_offset')

############################Generated class###################################
cdef class SplitContainer(classes.Container.Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SplitContainer")())
##################################Generated Properties#########################################
  @property
  def collapsed(self): 
    return self.get_collapsed()
  @collapsed.setter 
  def collapsed(self,value): 
    self.set_collapsed(value)
  @property
  def dragger_visibility(self): 
    return self.get_dragger_visibility()
  @dragger_visibility.setter 
  def dragger_visibility(self,value): 
    self.set_dragger_visibility(value)
  @property
  def split_offset(self): 
    return self.get_split_offset()
  @split_offset.setter 
  def split_offset(self,value): 
    self.set_split_offset(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_splitcontainer__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clamp_split_offset(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_splitcontainer_clamp_split_offset,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_dragger_visibility(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DraggerVisibility* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_splitcontainer_get_dragger_visibility,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_split_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_splitcontainer_get_split_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_collapsed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_splitcontainer_is_collapsed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_collapsed(self,  bool collapsed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collapsed
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_collapsed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dragger_visibility(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_dragger_visibility,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_split_offset(self,  int offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset
    api_core.godot_method_bind_ptrcall(bind_splitcontainer_set_split_offset,self.godot_owner,args,NULL)
    hello('hallo2')
