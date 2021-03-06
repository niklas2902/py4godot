from classes.CSGPrimitive cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgbox_get_depth
cdef godot_method_bind *bind_csgbox_get_height
cdef godot_method_bind *bind_csgbox_get_material
cdef godot_method_bind *bind_csgbox_get_width
cdef godot_method_bind *bind_csgbox_set_depth
cdef godot_method_bind *bind_csgbox_set_height
cdef godot_method_bind *bind_csgbox_set_material
cdef godot_method_bind *bind_csgbox_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgbox_get_depth = api_core.godot_method_bind_get_method('CSGBox', 'get_depth')
  bind_csgbox_get_height = api_core.godot_method_bind_get_method('CSGBox', 'get_height')
  bind_csgbox_get_material = api_core.godot_method_bind_get_method('CSGBox', 'get_material')
  bind_csgbox_get_width = api_core.godot_method_bind_get_method('CSGBox', 'get_width')
  bind_csgbox_set_depth = api_core.godot_method_bind_get_method('CSGBox', 'set_depth')
  bind_csgbox_set_height = api_core.godot_method_bind_get_method('CSGBox', 'set_height')
  bind_csgbox_set_material = api_core.godot_method_bind_get_method('CSGBox', 'set_material')
  bind_csgbox_set_width = api_core.godot_method_bind_get_method('CSGBox', 'set_width')

############################Generated class###################################
cdef class CSGBox(CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGBox")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgbox_get_depth,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgbox_get_height,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_csgbox_get_material,self.godot_owner,[NULL,],&ret)
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgbox_get_width,self.godot_owner,[NULL,],&ret)
  def  set_depth(self, depth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_depth,self.godot_owner,[NULL,],NULL)
  def  set_height(self, height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_height,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_material,self.godot_owner,[NULL,],NULL)
  def  set_width(self, width):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgbox_set_width,self.godot_owner,[NULL,],NULL)
