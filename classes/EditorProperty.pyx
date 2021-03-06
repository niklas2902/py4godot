from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorproperty__focusable_focused
cdef godot_method_bind *bind_editorproperty__gui_input
cdef godot_method_bind *bind_editorproperty_add_focusable
cdef godot_method_bind *bind_editorproperty_emit_changed
cdef godot_method_bind *bind_editorproperty_get_edited_object
cdef godot_method_bind *bind_editorproperty_get_edited_property
cdef godot_method_bind *bind_editorproperty_get_label
cdef godot_method_bind *bind_editorproperty_get_tooltip_text
cdef godot_method_bind *bind_editorproperty_is_checkable
cdef godot_method_bind *bind_editorproperty_is_checked
cdef godot_method_bind *bind_editorproperty_is_draw_red
cdef godot_method_bind *bind_editorproperty_is_keying
cdef godot_method_bind *bind_editorproperty_is_read_only
cdef godot_method_bind *bind_editorproperty_set_bottom_editor
cdef godot_method_bind *bind_editorproperty_set_checkable
cdef godot_method_bind *bind_editorproperty_set_checked
cdef godot_method_bind *bind_editorproperty_set_draw_red
cdef godot_method_bind *bind_editorproperty_set_keying
cdef godot_method_bind *bind_editorproperty_set_label
cdef godot_method_bind *bind_editorproperty_set_read_only
cdef godot_method_bind *bind_editorproperty_update_property
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorproperty__focusable_focused = api_core.godot_method_bind_get_method('EditorProperty', '_focusable_focused')
  bind_editorproperty__gui_input = api_core.godot_method_bind_get_method('EditorProperty', '_gui_input')
  bind_editorproperty_add_focusable = api_core.godot_method_bind_get_method('EditorProperty', 'add_focusable')
  bind_editorproperty_emit_changed = api_core.godot_method_bind_get_method('EditorProperty', 'emit_changed')
  bind_editorproperty_get_edited_object = api_core.godot_method_bind_get_method('EditorProperty', 'get_edited_object')
  bind_editorproperty_get_edited_property = api_core.godot_method_bind_get_method('EditorProperty', 'get_edited_property')
  bind_editorproperty_get_label = api_core.godot_method_bind_get_method('EditorProperty', 'get_label')
  bind_editorproperty_get_tooltip_text = api_core.godot_method_bind_get_method('EditorProperty', 'get_tooltip_text')
  bind_editorproperty_is_checkable = api_core.godot_method_bind_get_method('EditorProperty', 'is_checkable')
  bind_editorproperty_is_checked = api_core.godot_method_bind_get_method('EditorProperty', 'is_checked')
  bind_editorproperty_is_draw_red = api_core.godot_method_bind_get_method('EditorProperty', 'is_draw_red')
  bind_editorproperty_is_keying = api_core.godot_method_bind_get_method('EditorProperty', 'is_keying')
  bind_editorproperty_is_read_only = api_core.godot_method_bind_get_method('EditorProperty', 'is_read_only')
  bind_editorproperty_set_bottom_editor = api_core.godot_method_bind_get_method('EditorProperty', 'set_bottom_editor')
  bind_editorproperty_set_checkable = api_core.godot_method_bind_get_method('EditorProperty', 'set_checkable')
  bind_editorproperty_set_checked = api_core.godot_method_bind_get_method('EditorProperty', 'set_checked')
  bind_editorproperty_set_draw_red = api_core.godot_method_bind_get_method('EditorProperty', 'set_draw_red')
  bind_editorproperty_set_keying = api_core.godot_method_bind_get_method('EditorProperty', 'set_keying')
  bind_editorproperty_set_label = api_core.godot_method_bind_get_method('EditorProperty', 'set_label')
  bind_editorproperty_set_read_only = api_core.godot_method_bind_get_method('EditorProperty', 'set_read_only')
  bind_editorproperty_update_property = api_core.godot_method_bind_get_method('EditorProperty', 'update_property')

############################Generated class###################################
cdef class EditorProperty(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorProperty")())
##################################Generated Properties#########################################
  @property
  def checkable(self): 
    return self.get_checkable()
  @checkable.setter 
  def checkable(self,value): 
    self.set_checkable(value)
  @property
  def checked(self): 
    return self.get_checked()
  @checked.setter 
  def checked(self,value): 
    self.set_checked(value)
  @property
  def draw_red(self): 
    return self.get_draw_red()
  @draw_red.setter 
  def draw_red(self,value): 
    self.set_draw_red(value)
  @property
  def keying(self): 
    return self.get_keying()
  @keying.setter 
  def keying(self,value): 
    self.set_keying(value)
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
  def  _focusable_focused(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty__focusable_focused,self.godot_owner,[NULL,],NULL)
  def  _gui_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty__gui_input,self.godot_owner,[NULL,],NULL)
  def  add_focusable(self, control):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_add_focusable,self.godot_owner,[NULL,],NULL)
  def  emit_changed(self, propertyvaluefieldchanging):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_emit_changed,self.godot_owner,[NULL,],NULL)
  def  get_edited_object(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_get_edited_object,self.godot_owner,[NULL,],&ret)
  def  get_edited_property(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_get_edited_property,self.godot_owner,[NULL,],&ret)
  def  get_label(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_get_label,self.godot_owner,[NULL,],&ret)
  def  get_tooltip_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_get_tooltip_text,self.godot_owner,[NULL,],&ret)
  def  is_checkable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_is_checkable,self.godot_owner,[NULL,],&ret)
  def  is_checked(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_is_checked,self.godot_owner,[NULL,],&ret)
  def  is_draw_red(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_is_draw_red,self.godot_owner,[NULL,],&ret)
  def  is_keying(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_is_keying,self.godot_owner,[NULL,],&ret)
  def  is_read_only(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorproperty_is_read_only,self.godot_owner,[NULL,],&ret)
  def  set_bottom_editor(self, editor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_bottom_editor,self.godot_owner,[NULL,],NULL)
  def  set_checkable(self, checkable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_checkable,self.godot_owner,[NULL,],NULL)
  def  set_checked(self, checked):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_checked,self.godot_owner,[NULL,],NULL)
  def  set_draw_red(self, draw_red):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_draw_red,self.godot_owner,[NULL,],NULL)
  def  set_keying(self, keying):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_keying,self.godot_owner,[NULL,],NULL)
  def  set_label(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_label,self.godot_owner,[NULL,],NULL)
  def  set_read_only(self, read_only):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_set_read_only,self.godot_owner,[NULL,],NULL)
  def  update_property(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorproperty_update_property,self.godot_owner,[NULL,],NULL)
