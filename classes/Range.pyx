from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_range_get_as_ratio
cdef godot_method_bind *bind_range_get_max
cdef godot_method_bind *bind_range_get_min
cdef godot_method_bind *bind_range_get_page
cdef godot_method_bind *bind_range_get_step
cdef godot_method_bind *bind_range_get_value
cdef godot_method_bind *bind_range_is_greater_allowed
cdef godot_method_bind *bind_range_is_lesser_allowed
cdef godot_method_bind *bind_range_is_ratio_exp
cdef godot_method_bind *bind_range_is_using_rounded_values
cdef godot_method_bind *bind_range_set_allow_greater
cdef godot_method_bind *bind_range_set_allow_lesser
cdef godot_method_bind *bind_range_set_as_ratio
cdef godot_method_bind *bind_range_set_exp_ratio
cdef godot_method_bind *bind_range_set_max
cdef godot_method_bind *bind_range_set_min
cdef godot_method_bind *bind_range_set_page
cdef godot_method_bind *bind_range_set_step
cdef godot_method_bind *bind_range_set_use_rounded_values
cdef godot_method_bind *bind_range_set_value
cdef godot_method_bind *bind_range_share
cdef godot_method_bind *bind_range_unshare
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_range_get_as_ratio = api_core.godot_method_bind_get_method('Range', 'get_as_ratio')
  bind_range_get_max = api_core.godot_method_bind_get_method('Range', 'get_max')
  bind_range_get_min = api_core.godot_method_bind_get_method('Range', 'get_min')
  bind_range_get_page = api_core.godot_method_bind_get_method('Range', 'get_page')
  bind_range_get_step = api_core.godot_method_bind_get_method('Range', 'get_step')
  bind_range_get_value = api_core.godot_method_bind_get_method('Range', 'get_value')
  bind_range_is_greater_allowed = api_core.godot_method_bind_get_method('Range', 'is_greater_allowed')
  bind_range_is_lesser_allowed = api_core.godot_method_bind_get_method('Range', 'is_lesser_allowed')
  bind_range_is_ratio_exp = api_core.godot_method_bind_get_method('Range', 'is_ratio_exp')
  bind_range_is_using_rounded_values = api_core.godot_method_bind_get_method('Range', 'is_using_rounded_values')
  bind_range_set_allow_greater = api_core.godot_method_bind_get_method('Range', 'set_allow_greater')
  bind_range_set_allow_lesser = api_core.godot_method_bind_get_method('Range', 'set_allow_lesser')
  bind_range_set_as_ratio = api_core.godot_method_bind_get_method('Range', 'set_as_ratio')
  bind_range_set_exp_ratio = api_core.godot_method_bind_get_method('Range', 'set_exp_ratio')
  bind_range_set_max = api_core.godot_method_bind_get_method('Range', 'set_max')
  bind_range_set_min = api_core.godot_method_bind_get_method('Range', 'set_min')
  bind_range_set_page = api_core.godot_method_bind_get_method('Range', 'set_page')
  bind_range_set_step = api_core.godot_method_bind_get_method('Range', 'set_step')
  bind_range_set_use_rounded_values = api_core.godot_method_bind_get_method('Range', 'set_use_rounded_values')
  bind_range_set_value = api_core.godot_method_bind_get_method('Range', 'set_value')
  bind_range_share = api_core.godot_method_bind_get_method('Range', 'share')
  bind_range_unshare = api_core.godot_method_bind_get_method('Range', 'unshare')

############################Generated class###################################
cdef class Range(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Range")())
##################################Generated Properties#########################################
  @property
  def allow_greater(self): 
    return self.get_allow_greater()
  @allow_greater.setter 
  def allow_greater(self,value): 
    self.set_allow_greater(value)
  @property
  def allow_lesser(self): 
    return self.get_allow_lesser()
  @allow_lesser.setter 
  def allow_lesser(self,value): 
    self.set_allow_lesser(value)
  @property
  def exp_edit(self): 
    return self.get_exp_edit()
  @exp_edit.setter 
  def exp_edit(self,value): 
    self.set_exp_edit(value)
  @property
  def max_value(self): 
    return self.get_max_value()
  @max_value.setter 
  def max_value(self,value): 
    self.set_max_value(value)
  @property
  def min_value(self): 
    return self.get_min_value()
  @min_value.setter 
  def min_value(self,value): 
    self.set_min_value(value)
  @property
  def page(self): 
    return self.get_page()
  @page.setter 
  def page(self,value): 
    self.set_page(value)
  @property
  def ratio(self): 
    return self.get_ratio()
  @ratio.setter 
  def ratio(self,value): 
    self.set_ratio(value)
  @property
  def rounded(self): 
    return self.get_rounded()
  @rounded.setter 
  def rounded(self,value): 
    self.set_rounded(value)
  @property
  def step(self): 
    return self.get_step()
  @step.setter 
  def step(self,value): 
    self.set_step(value)
  @property
  def value(self): 
    return self.get_value()
  @value.setter 
  def value(self,value): 
    self.set_value(value)

##################################Generated Methods#########################################
  def  get_as_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_as_ratio,self.godot_owner,[NULL,],&ret)
  def  get_max(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_max,self.godot_owner,[NULL,],&ret)
  def  get_min(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_min,self.godot_owner,[NULL,],&ret)
  def  get_page(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_page,self.godot_owner,[NULL,],&ret)
  def  get_step(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_step,self.godot_owner,[NULL,],&ret)
  def  get_value(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_range_get_value,self.godot_owner,[NULL,],&ret)
  def  is_greater_allowed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_range_is_greater_allowed,self.godot_owner,[NULL,],&ret)
  def  is_lesser_allowed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_range_is_lesser_allowed,self.godot_owner,[NULL,],&ret)
  def  is_ratio_exp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_range_is_ratio_exp,self.godot_owner,[NULL,],&ret)
  def  is_using_rounded_values(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_range_is_using_rounded_values,self.godot_owner,[NULL,],&ret)
  def  set_allow_greater(self, allow):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_allow_greater,self.godot_owner,[NULL,],NULL)
  def  set_allow_lesser(self, allow):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_allow_lesser,self.godot_owner,[NULL,],NULL)
  def  set_as_ratio(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_as_ratio,self.godot_owner,[NULL,],NULL)
  def  set_exp_ratio(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_exp_ratio,self.godot_owner,[NULL,],NULL)
  def  set_max(self, maximum):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_max,self.godot_owner,[NULL,],NULL)
  def  set_min(self, minimum):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_min,self.godot_owner,[NULL,],NULL)
  def  set_page(self, pagesize):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_page,self.godot_owner,[NULL,],NULL)
  def  set_step(self, step):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_step,self.godot_owner,[NULL,],NULL)
  def  set_use_rounded_values(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_use_rounded_values,self.godot_owner,[NULL,],NULL)
  def  set_value(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_set_value,self.godot_owner,[NULL,],NULL)
  def  share(self, with_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_share,self.godot_owner,[NULL,],NULL)
  def  unshare(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_range_unshare,self.godot_owner,[NULL,],NULL)
