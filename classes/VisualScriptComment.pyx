from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptcomment_get_description
cdef godot_method_bind *bind_visualscriptcomment_get_size
cdef godot_method_bind *bind_visualscriptcomment_get_title
cdef godot_method_bind *bind_visualscriptcomment_set_description
cdef godot_method_bind *bind_visualscriptcomment_set_size
cdef godot_method_bind *bind_visualscriptcomment_set_title
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptcomment_get_description = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_description')
  bind_visualscriptcomment_get_size = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_size')
  bind_visualscriptcomment_get_title = api_core.godot_method_bind_get_method('VisualScriptComment', 'get_title')
  bind_visualscriptcomment_set_description = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_description')
  bind_visualscriptcomment_set_size = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_size')
  bind_visualscriptcomment_set_title = api_core.godot_method_bind_get_method('VisualScriptComment', 'set_title')

############################Generated class###################################
cdef class VisualScriptComment(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptComment")())
##################################Generated Properties#########################################
  @property
  def description(self): 
    return self.get_description()
  @description.setter 
  def description(self,value): 
    self.set_description(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def title(self): 
    return self.get_title()
  @title.setter 
  def title(self,value): 
    self.set_title(value)

##################################Generated Methods#########################################
  def  get_description(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_description,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_size,self.godot_owner,[NULL,],&ret)
  def  get_title(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_get_title,self.godot_owner,[NULL,],&ret)
  def  set_description(self, description):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_description,self.godot_owner,[NULL,],NULL)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_size,self.godot_owner,[NULL,],NULL)
  def  set_title(self, title):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptcomment_set_title,self.godot_owner,[NULL,],NULL)
