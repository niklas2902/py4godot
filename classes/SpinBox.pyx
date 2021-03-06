from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spinbox__gui_input
cdef godot_method_bind *bind_spinbox__line_edit_focus_exit
cdef godot_method_bind *bind_spinbox__line_edit_input
cdef godot_method_bind *bind_spinbox__range_click_timeout
cdef godot_method_bind *bind_spinbox__text_entered
cdef godot_method_bind *bind_spinbox_apply
cdef godot_method_bind *bind_spinbox_get_align
cdef godot_method_bind *bind_spinbox_get_line_edit
cdef godot_method_bind *bind_spinbox_get_prefix
cdef godot_method_bind *bind_spinbox_get_suffix
cdef godot_method_bind *bind_spinbox_is_editable
cdef godot_method_bind *bind_spinbox_set_align
cdef godot_method_bind *bind_spinbox_set_editable
cdef godot_method_bind *bind_spinbox_set_prefix
cdef godot_method_bind *bind_spinbox_set_suffix
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spinbox__gui_input = api_core.godot_method_bind_get_method('SpinBox', '_gui_input')
  bind_spinbox__line_edit_focus_exit = api_core.godot_method_bind_get_method('SpinBox', '_line_edit_focus_exit')
  bind_spinbox__line_edit_input = api_core.godot_method_bind_get_method('SpinBox', '_line_edit_input')
  bind_spinbox__range_click_timeout = api_core.godot_method_bind_get_method('SpinBox', '_range_click_timeout')
  bind_spinbox__text_entered = api_core.godot_method_bind_get_method('SpinBox', '_text_entered')
  bind_spinbox_apply = api_core.godot_method_bind_get_method('SpinBox', 'apply')
  bind_spinbox_get_align = api_core.godot_method_bind_get_method('SpinBox', 'get_align')
  bind_spinbox_get_line_edit = api_core.godot_method_bind_get_method('SpinBox', 'get_line_edit')
  bind_spinbox_get_prefix = api_core.godot_method_bind_get_method('SpinBox', 'get_prefix')
  bind_spinbox_get_suffix = api_core.godot_method_bind_get_method('SpinBox', 'get_suffix')
  bind_spinbox_is_editable = api_core.godot_method_bind_get_method('SpinBox', 'is_editable')
  bind_spinbox_set_align = api_core.godot_method_bind_get_method('SpinBox', 'set_align')
  bind_spinbox_set_editable = api_core.godot_method_bind_get_method('SpinBox', 'set_editable')
  bind_spinbox_set_prefix = api_core.godot_method_bind_get_method('SpinBox', 'set_prefix')
  bind_spinbox_set_suffix = api_core.godot_method_bind_get_method('SpinBox', 'set_suffix')

############################Generated class###################################
cdef class SpinBox(Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpinBox")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def editable(self): 
    return self.get_editable()
  @editable.setter 
  def editable(self,value): 
    self.set_editable(value)
  @property
  def prefix(self): 
    return self.get_prefix()
  @prefix.setter 
  def prefix(self,value): 
    self.set_prefix(value)
  @property
  def suffix(self): 
    return self.get_suffix()
  @suffix.setter 
  def suffix(self,value): 
    self.set_suffix(value)

##################################Generated Methods#########################################
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__gui_input,self.godot_owner,[NULL,],NULL)
  def  _line_edit_focus_exit(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__line_edit_focus_exit,self.godot_owner,[NULL,],NULL)
  def  _line_edit_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__line_edit_input,self.godot_owner,[NULL,],NULL)
  def  _range_click_timeout(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__range_click_timeout,self.godot_owner,[NULL,],NULL)
  def  _text_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox__text_entered,self.godot_owner,[NULL,],NULL)
  def  apply(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox_apply,self.godot_owner,[NULL,],NULL)
  def  get_align(self):
    cdef godot_object *_owner = self.godot_owner
    cdef LineEdit::Align ret
    api_core.godot_method_bind_ptrcall(bind_spinbox_get_align,self.godot_owner,[NULL,],&ret)
  def  get_line_edit(self):
    cdef godot_object *_owner = self.godot_owner
    cdef LineEdit ret
    api_core.godot_method_bind_ptrcall(bind_spinbox_get_line_edit,self.godot_owner,[NULL,],&ret)
  def  get_prefix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_spinbox_get_prefix,self.godot_owner,[NULL,],&ret)
  def  get_suffix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_spinbox_get_suffix,self.godot_owner,[NULL,],&ret)
  def  is_editable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spinbox_is_editable,self.godot_owner,[NULL,],&ret)
  def  set_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_align,self.godot_owner,[NULL,],NULL)
  def  set_editable(self, editable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_editable,self.godot_owner,[NULL,],NULL)
  def  set_prefix(self, prefix):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_prefix,self.godot_owner,[NULL,],NULL)
  def  set_suffix(self, suffix):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spinbox_set_suffix,self.godot_owner,[NULL,],NULL)
