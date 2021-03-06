from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shortcut_get_as_text
cdef godot_method_bind *bind_shortcut_get_shortcut
cdef godot_method_bind *bind_shortcut_is_shortcut
cdef godot_method_bind *bind_shortcut_is_valid
cdef godot_method_bind *bind_shortcut_set_shortcut
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shortcut_get_as_text = api_core.godot_method_bind_get_method('ShortCut', 'get_as_text')
  bind_shortcut_get_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'get_shortcut')
  bind_shortcut_is_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'is_shortcut')
  bind_shortcut_is_valid = api_core.godot_method_bind_get_method('ShortCut', 'is_valid')
  bind_shortcut_set_shortcut = api_core.godot_method_bind_get_method('ShortCut', 'set_shortcut')

############################Generated class###################################
cdef class ShortCut(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ShortCut")())
##################################Generated Properties#########################################
  @property
  def shortcut(self): 
    return self.get_shortcut()
  @shortcut.setter 
  def shortcut(self,value): 
    self.set_shortcut(value)

##################################Generated Methods#########################################
  def  get_as_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_shortcut_get_as_text,self.godot_owner,[NULL,],&ret)
  def  get_shortcut(self):
    cdef godot_object *_owner = self.godot_owner
    cdef InputEvent ret
    api_core.godot_method_bind_ptrcall(bind_shortcut_get_shortcut,self.godot_owner,[NULL,],&ret)
  def  is_shortcut(self, event):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shortcut_is_shortcut,self.godot_owner,[NULL,],&ret)
  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_shortcut_is_valid,self.godot_owner,[NULL,],&ret)
  def  set_shortcut(self, event):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shortcut_set_shortcut,self.godot_owner,[NULL,],NULL)
