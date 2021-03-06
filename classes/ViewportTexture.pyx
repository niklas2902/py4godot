from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_viewporttexture_get_viewport_path_in_scene
cdef godot_method_bind *bind_viewporttexture_set_viewport_path_in_scene
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_viewporttexture_get_viewport_path_in_scene = api_core.godot_method_bind_get_method('ViewportTexture', 'get_viewport_path_in_scene')
  bind_viewporttexture_set_viewport_path_in_scene = api_core.godot_method_bind_get_method('ViewportTexture', 'set_viewport_path_in_scene')

############################Generated class###################################
cdef class ViewportTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ViewportTexture")())
##################################Generated Properties#########################################
  @property
  def viewport_path(self): 
    return self.get_viewport_path()
  @viewport_path.setter 
  def viewport_path(self,value): 
    self.set_viewport_path(value)

##################################Generated Methods#########################################
  def  get_viewport_path_in_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_viewporttexture_get_viewport_path_in_scene,self.godot_owner,[NULL,],&ret)
  def  set_viewport_path_in_scene(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_viewporttexture_set_viewport_path_in_scene,self.godot_owner,[NULL,],NULL)
