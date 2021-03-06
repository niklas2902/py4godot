from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorspinslider__grabber_gui_input
cdef godot_method_bind *bind_editorspinslider__grabber_mouse_entered
cdef godot_method_bind *bind_editorspinslider__grabber_mouse_exited
cdef godot_method_bind *bind_editorspinslider__gui_input
cdef godot_method_bind *bind_editorspinslider__value_focus_exited
cdef godot_method_bind *bind_editorspinslider__value_input_closed
cdef godot_method_bind *bind_editorspinslider__value_input_entered
cdef godot_method_bind *bind_editorspinslider_get_label
cdef godot_method_bind *bind_editorspinslider_is_flat
cdef godot_method_bind *bind_editorspinslider_is_read_only
cdef godot_method_bind *bind_editorspinslider_set_flat
cdef godot_method_bind *bind_editorspinslider_set_label
cdef godot_method_bind *bind_editorspinslider_set_read_only
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorspinslider__grabber_gui_input = api_core.godot_method_bind_get_method('EditorSpinSlider', '_grabber_gui_input')
  bind_editorspinslider__grabber_mouse_entered = api_core.godot_method_bind_get_method('EditorSpinSlider', '_grabber_mouse_entered')
  bind_editorspinslider__grabber_mouse_exited = api_core.godot_method_bind_get_method('EditorSpinSlider', '_grabber_mouse_exited')
  bind_editorspinslider__gui_input = api_core.godot_method_bind_get_method('EditorSpinSlider', '_gui_input')
  bind_editorspinslider__value_focus_exited = api_core.godot_method_bind_get_method('EditorSpinSlider', '_value_focus_exited')
  bind_editorspinslider__value_input_closed = api_core.godot_method_bind_get_method('EditorSpinSlider', '_value_input_closed')
  bind_editorspinslider__value_input_entered = api_core.godot_method_bind_get_method('EditorSpinSlider', '_value_input_entered')
  bind_editorspinslider_get_label = api_core.godot_method_bind_get_method('EditorSpinSlider', 'get_label')
  bind_editorspinslider_is_flat = api_core.godot_method_bind_get_method('EditorSpinSlider', 'is_flat')
  bind_editorspinslider_is_read_only = api_core.godot_method_bind_get_method('EditorSpinSlider', 'is_read_only')
  bind_editorspinslider_set_flat = api_core.godot_method_bind_get_method('EditorSpinSlider', 'set_flat')
  bind_editorspinslider_set_label = api_core.godot_method_bind_get_method('EditorSpinSlider', 'set_label')
  bind_editorspinslider_set_read_only = api_core.godot_method_bind_get_method('EditorSpinSlider', 'set_read_only')

############################Generated class###################################
cdef class EditorSpinSlider(Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSpinSlider")())
##################################Generated Properties#########################################
  @property
  def flat(self): 
    return self.get_flat()
  @flat.setter 
  def flat(self,value): 
    self.set_flat(value)
  @property
  def label(self): 
    return self.get_label()
  @label.setter 
  def label(self,value): 
    self.set_label(value)
  @property
  def read_only(self): 
    return self.get_read_only()
  @read_only.setter 
  def read_only(self,value): 
    self.set_read_only(value)

##################################Generated Methods#########################################
  def  _grabber_gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__grabber_gui_input,self.godot_owner,[NULL,],NULL)
  def  _grabber_mouse_entered(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__grabber_mouse_entered,self.godot_owner,[NULL,],NULL)
  def  _grabber_mouse_exited(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__grabber_mouse_exited,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__gui_input,self.godot_owner,[NULL,],NULL)
  def  _value_focus_exited(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__value_focus_exited,self.godot_owner,[NULL,],NULL)
  def  _value_input_closed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__value_input_closed,self.godot_owner,[NULL,],NULL)
  def  _value_input_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider__value_input_entered,self.godot_owner,[NULL,],NULL)
  def  get_label(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_get_label,self.godot_owner,[NULL,],&ret)
  def  is_flat(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_is_flat,self.godot_owner,[NULL,],&ret)
  def  is_read_only(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_is_read_only,self.godot_owner,[NULL,],&ret)
  def  set_flat(self, flat):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_set_flat,self.godot_owner,[NULL,],NULL)
  def  set_label(self, label):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_set_label,self.godot_owner,[NULL,],NULL)
  def  set_read_only(self, read_only):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspinslider_set_read_only,self.godot_owner,[NULL,],NULL)
