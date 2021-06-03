
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
cimport classes.Range 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_slider__gui_input
cdef godot_method_bind *bind_slider_get_ticks
cdef godot_method_bind *bind_slider_get_ticks_on_borders
cdef godot_method_bind *bind_slider_is_editable
cdef godot_method_bind *bind_slider_is_scrollable
cdef godot_method_bind *bind_slider_set_editable
cdef godot_method_bind *bind_slider_set_scrollable
cdef godot_method_bind *bind_slider_set_ticks
cdef godot_method_bind *bind_slider_set_ticks_on_borders
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_slider__gui_input = api_core.godot_method_bind_get_method('Slider', '_gui_input')
  bind_slider_get_ticks = api_core.godot_method_bind_get_method('Slider', 'get_ticks')
  bind_slider_get_ticks_on_borders = api_core.godot_method_bind_get_method('Slider', 'get_ticks_on_borders')
  bind_slider_is_editable = api_core.godot_method_bind_get_method('Slider', 'is_editable')
  bind_slider_is_scrollable = api_core.godot_method_bind_get_method('Slider', 'is_scrollable')
  bind_slider_set_editable = api_core.godot_method_bind_get_method('Slider', 'set_editable')
  bind_slider_set_scrollable = api_core.godot_method_bind_get_method('Slider', 'set_scrollable')
  bind_slider_set_ticks = api_core.godot_method_bind_get_method('Slider', 'set_ticks')
  bind_slider_set_ticks_on_borders = api_core.godot_method_bind_get_method('Slider', 'set_ticks_on_borders')

############################Generated class###################################
cdef class Slider(classes.Range.Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Slider")())
##################################Generated Properties#########################################
  @property
  def editable(self): 
    return self.get_editable()
  @editable.setter 
  def editable(self,value): 
    self.set_editable(value)
  @property
  def scrollable(self): 
    return self.get_scrollable()
  @scrollable.setter 
  def scrollable(self,value): 
    self.set_scrollable(value)
  @property
  def tick_count(self): 
    return self.get_tick_count()
  @tick_count.setter 
  def tick_count(self,value): 
    self.set_tick_count(value)
  @property
  def ticks_on_borders(self): 
    return self.get_ticks_on_borders()
  @ticks_on_borders.setter 
  def ticks_on_borders(self,value): 
    self.set_ticks_on_borders(value)

##################################Generated Methods#########################################
  def  _gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider__gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_ticks(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_slider_get_ticks,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_ticks_on_borders(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_slider_get_ticks_on_borders,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_editable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_slider_is_editable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_scrollable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_slider_is_scrollable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_editable(self,  bool editable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &editable
    api_core.godot_method_bind_ptrcall(bind_slider_set_editable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scrollable(self,  bool scrollable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scrollable
    api_core.godot_method_bind_ptrcall(bind_slider_set_scrollable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ticks(self,  int count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &count
    api_core.godot_method_bind_ptrcall(bind_slider_set_ticks,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ticks_on_borders(self,  bool ticks_on_border):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ticks_on_border
    api_core.godot_method_bind_ptrcall(bind_slider_set_ticks_on_borders,self.godot_owner,args,NULL)
    hello('hallo2')
