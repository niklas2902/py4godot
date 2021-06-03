
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
cimport classes.InputEvent
cimport classes.Container 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_viewportcontainer__input
cdef godot_method_bind *bind_viewportcontainer__unhandled_input
cdef godot_method_bind *bind_viewportcontainer_get_stretch_shrink
cdef godot_method_bind *bind_viewportcontainer_is_stretch_enabled
cdef godot_method_bind *bind_viewportcontainer_set_stretch
cdef godot_method_bind *bind_viewportcontainer_set_stretch_shrink
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_viewportcontainer__input = api_core.godot_method_bind_get_method('ViewportContainer', '_input')
  bind_viewportcontainer__unhandled_input = api_core.godot_method_bind_get_method('ViewportContainer', '_unhandled_input')
  bind_viewportcontainer_get_stretch_shrink = api_core.godot_method_bind_get_method('ViewportContainer', 'get_stretch_shrink')
  bind_viewportcontainer_is_stretch_enabled = api_core.godot_method_bind_get_method('ViewportContainer', 'is_stretch_enabled')
  bind_viewportcontainer_set_stretch = api_core.godot_method_bind_get_method('ViewportContainer', 'set_stretch')
  bind_viewportcontainer_set_stretch_shrink = api_core.godot_method_bind_get_method('ViewportContainer', 'set_stretch_shrink')

############################Generated class###################################
cdef class ViewportContainer(classes.Container.Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ViewportContainer")())
##################################Generated Properties#########################################
  @property
  def stretch(self): 
    return self.get_stretch()
  @stretch.setter 
  def stretch(self,value): 
    self.set_stretch(value)
  @property
  def stretch_shrink(self): 
    return self.get_stretch_shrink()
  @stretch_shrink.setter 
  def stretch_shrink(self,value): 
    self.set_stretch_shrink(value)

##################################Generated Methods#########################################
  def  _input(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer__input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _unhandled_input(self,  classes.InputEvent.InputEvent event):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = event.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer__unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_stretch_shrink(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_get_stretch_shrink,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_stretch_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_is_stretch_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_stretch(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_set_stretch,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stretch_shrink(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_viewportcontainer_set_stretch_shrink,self.godot_owner,args,NULL)
    hello('hallo2')
