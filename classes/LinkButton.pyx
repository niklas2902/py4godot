from classes.BaseButton cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_linkbutton_get_text
cdef godot_method_bind *bind_linkbutton_get_underline_mode
cdef godot_method_bind *bind_linkbutton_set_text
cdef godot_method_bind *bind_linkbutton_set_underline_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_linkbutton_get_text = api_core.godot_method_bind_get_method('LinkButton', 'get_text')
  bind_linkbutton_get_underline_mode = api_core.godot_method_bind_get_method('LinkButton', 'get_underline_mode')
  bind_linkbutton_set_text = api_core.godot_method_bind_get_method('LinkButton', 'set_text')
  bind_linkbutton_set_underline_mode = api_core.godot_method_bind_get_method('LinkButton', 'set_underline_mode')

############################Generated class###################################
cdef class LinkButton(BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LinkButton")())
##################################Generated Properties#########################################
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)
  @property
  def underline(self): 
    return self.get_underline()
  @underline.setter 
  def underline(self,value): 
    self.set_underline(value)

##################################Generated Methods#########################################
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_linkbutton_get_text,self.godot_owner,[NULL,],&ret)
  def  get_underline_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef LinkButton::UnderlineMode ret
    api_core.godot_method_bind_ptrcall(bind_linkbutton_get_underline_mode,self.godot_owner,[NULL,],&ret)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_linkbutton_set_text,self.godot_owner,[NULL,],NULL)
  def  set_underline_mode(self, underline_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_linkbutton_set_underline_mode,self.godot_owner,[NULL,],NULL)
