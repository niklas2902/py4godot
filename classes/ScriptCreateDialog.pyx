from classes.ConfirmationDialog cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scriptcreatedialog__browse_class_in_tree
cdef godot_method_bind *bind_scriptcreatedialog__browse_path
cdef godot_method_bind *bind_scriptcreatedialog__built_in_pressed
cdef godot_method_bind *bind_scriptcreatedialog__class_name_changed
cdef godot_method_bind *bind_scriptcreatedialog__create
cdef godot_method_bind *bind_scriptcreatedialog__file_selected
cdef godot_method_bind *bind_scriptcreatedialog__lang_changed
cdef godot_method_bind *bind_scriptcreatedialog__parent_name_changed
cdef godot_method_bind *bind_scriptcreatedialog__path_changed
cdef godot_method_bind *bind_scriptcreatedialog__path_entered
cdef godot_method_bind *bind_scriptcreatedialog__path_hbox_sorted
cdef godot_method_bind *bind_scriptcreatedialog__template_changed
cdef godot_method_bind *bind_scriptcreatedialog_config
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scriptcreatedialog__browse_class_in_tree = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_browse_class_in_tree')
  bind_scriptcreatedialog__browse_path = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_browse_path')
  bind_scriptcreatedialog__built_in_pressed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_built_in_pressed')
  bind_scriptcreatedialog__class_name_changed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_class_name_changed')
  bind_scriptcreatedialog__create = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_create')
  bind_scriptcreatedialog__file_selected = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_file_selected')
  bind_scriptcreatedialog__lang_changed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_lang_changed')
  bind_scriptcreatedialog__parent_name_changed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_parent_name_changed')
  bind_scriptcreatedialog__path_changed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_path_changed')
  bind_scriptcreatedialog__path_entered = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_path_entered')
  bind_scriptcreatedialog__path_hbox_sorted = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_path_hbox_sorted')
  bind_scriptcreatedialog__template_changed = api_core.godot_method_bind_get_method('ScriptCreateDialog', '_template_changed')
  bind_scriptcreatedialog_config = api_core.godot_method_bind_get_method('ScriptCreateDialog', 'config')

############################Generated class###################################
cdef class ScriptCreateDialog(ConfirmationDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScriptCreateDialog")())
##################################Generated Methods#########################################
  def  _browse_class_in_tree(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__browse_class_in_tree,self.godot_owner,[NULL,],NULL)
  def  _browse_path(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__browse_path,self.godot_owner,[NULL,],NULL)
  def  _built_in_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__built_in_pressed,self.godot_owner,[NULL,],NULL)
  def  _class_name_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__class_name_changed,self.godot_owner,[NULL,],NULL)
  def  _create(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__create,self.godot_owner,[NULL,],NULL)
  def  _file_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__file_selected,self.godot_owner,[NULL,],NULL)
  def  _lang_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__lang_changed,self.godot_owner,[NULL,],NULL)
  def  _parent_name_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__parent_name_changed,self.godot_owner,[NULL,],NULL)
  def  _path_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_changed,self.godot_owner,[NULL,],NULL)
  def  _path_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_entered,self.godot_owner,[NULL,],NULL)
  def  _path_hbox_sorted(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_hbox_sorted,self.godot_owner,[NULL,],NULL)
  def  _template_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__template_changed,self.godot_owner,[NULL,],NULL)
  def  config(self, inheritspathbuilt_in_enabledload_enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog_config,self.godot_owner,[NULL,],NULL)
