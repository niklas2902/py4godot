from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Slider(Range):
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
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider__gui_input,self.godot_owner,[NULL,],NULL)
  def  get_ticks(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_slider_get_ticks,self.godot_owner,[NULL,],&ret)
  def  get_ticks_on_borders(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_slider_get_ticks_on_borders,self.godot_owner,[NULL,],&ret)
  def  is_editable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_slider_is_editable,self.godot_owner,[NULL,],&ret)
  def  is_scrollable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_slider_is_scrollable,self.godot_owner,[NULL,],&ret)
  def  set_editable(self, editable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider_set_editable,self.godot_owner,[NULL,],NULL)
  def  set_scrollable(self, scrollable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider_set_scrollable,self.godot_owner,[NULL,],NULL)
  def  set_ticks(self, count):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider_set_ticks,self.godot_owner,[NULL,],NULL)
  def  set_ticks_on_borders(self, ticks_on_border):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_slider_set_ticks_on_borders,self.godot_owner,[NULL,],NULL)
