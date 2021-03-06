from classes.StyleBox cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_styleboxline_get_color
cdef godot_method_bind *bind_styleboxline_get_grow_begin
cdef godot_method_bind *bind_styleboxline_get_grow_end
cdef godot_method_bind *bind_styleboxline_get_thickness
cdef godot_method_bind *bind_styleboxline_is_vertical
cdef godot_method_bind *bind_styleboxline_set_color
cdef godot_method_bind *bind_styleboxline_set_grow_begin
cdef godot_method_bind *bind_styleboxline_set_grow_end
cdef godot_method_bind *bind_styleboxline_set_thickness
cdef godot_method_bind *bind_styleboxline_set_vertical
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_styleboxline_get_color = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_color')
  bind_styleboxline_get_grow_begin = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_grow_begin')
  bind_styleboxline_get_grow_end = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_grow_end')
  bind_styleboxline_get_thickness = api_core.godot_method_bind_get_method('StyleBoxLine', 'get_thickness')
  bind_styleboxline_is_vertical = api_core.godot_method_bind_get_method('StyleBoxLine', 'is_vertical')
  bind_styleboxline_set_color = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_color')
  bind_styleboxline_set_grow_begin = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_grow_begin')
  bind_styleboxline_set_grow_end = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_grow_end')
  bind_styleboxline_set_thickness = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_thickness')
  bind_styleboxline_set_vertical = api_core.godot_method_bind_get_method('StyleBoxLine', 'set_vertical')

############################Generated class###################################
cdef class StyleBoxLine(StyleBox):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StyleBoxLine")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def grow_begin(self): 
    return self.get_grow_begin()
  @grow_begin.setter 
  def grow_begin(self,value): 
    self.set_grow_begin(value)
  @property
  def grow_end(self): 
    return self.get_grow_end()
  @grow_end.setter 
  def grow_end(self,value): 
    self.set_grow_end(value)
  @property
  def thickness(self): 
    return self.get_thickness()
  @thickness.setter 
  def thickness(self,value): 
    self.set_thickness(value)
  @property
  def vertical(self): 
    return self.get_vertical()
  @vertical.setter 
  def vertical(self,value): 
    self.set_vertical(value)

##################################Generated Methods#########################################
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_color,self.godot_owner,[NULL,],&ret)
  def  get_grow_begin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_grow_begin,self.godot_owner,[NULL,],&ret)
  def  get_grow_end(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_grow_end,self.godot_owner,[NULL,],&ret)
  def  get_thickness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_styleboxline_get_thickness,self.godot_owner,[NULL,],&ret)
  def  is_vertical(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_styleboxline_is_vertical,self.godot_owner,[NULL,],&ret)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_color,self.godot_owner,[NULL,],NULL)
  def  set_grow_begin(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_grow_begin,self.godot_owner,[NULL,],NULL)
  def  set_grow_end(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_grow_end,self.godot_owner,[NULL,],NULL)
  def  set_thickness(self, thickness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_thickness,self.godot_owner,[NULL,],NULL)
  def  set_vertical(self, vertical):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_styleboxline_set_vertical,self.godot_owner,[NULL,],NULL)
