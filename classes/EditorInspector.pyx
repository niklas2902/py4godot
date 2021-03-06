from classes.ScrollContainer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorinspector__edit_request_change
cdef godot_method_bind *bind_editorinspector__feature_profile_changed
cdef godot_method_bind *bind_editorinspector__filter_changed
cdef godot_method_bind *bind_editorinspector__multiple_properties_changed
cdef godot_method_bind *bind_editorinspector__node_removed
cdef godot_method_bind *bind_editorinspector__object_id_selected
cdef godot_method_bind *bind_editorinspector__property_changed
cdef godot_method_bind *bind_editorinspector__property_changed_update_all
cdef godot_method_bind *bind_editorinspector__property_checked
cdef godot_method_bind *bind_editorinspector__property_keyed
cdef godot_method_bind *bind_editorinspector__property_keyed_with_value
cdef godot_method_bind *bind_editorinspector__property_selected
cdef godot_method_bind *bind_editorinspector__resource_selected
cdef godot_method_bind *bind_editorinspector__vscroll_changed
cdef godot_method_bind *bind_editorinspector_refresh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorinspector__edit_request_change = api_core.godot_method_bind_get_method('EditorInspector', '_edit_request_change')
  bind_editorinspector__feature_profile_changed = api_core.godot_method_bind_get_method('EditorInspector', '_feature_profile_changed')
  bind_editorinspector__filter_changed = api_core.godot_method_bind_get_method('EditorInspector', '_filter_changed')
  bind_editorinspector__multiple_properties_changed = api_core.godot_method_bind_get_method('EditorInspector', '_multiple_properties_changed')
  bind_editorinspector__node_removed = api_core.godot_method_bind_get_method('EditorInspector', '_node_removed')
  bind_editorinspector__object_id_selected = api_core.godot_method_bind_get_method('EditorInspector', '_object_id_selected')
  bind_editorinspector__property_changed = api_core.godot_method_bind_get_method('EditorInspector', '_property_changed')
  bind_editorinspector__property_changed_update_all = api_core.godot_method_bind_get_method('EditorInspector', '_property_changed_update_all')
  bind_editorinspector__property_checked = api_core.godot_method_bind_get_method('EditorInspector', '_property_checked')
  bind_editorinspector__property_keyed = api_core.godot_method_bind_get_method('EditorInspector', '_property_keyed')
  bind_editorinspector__property_keyed_with_value = api_core.godot_method_bind_get_method('EditorInspector', '_property_keyed_with_value')
  bind_editorinspector__property_selected = api_core.godot_method_bind_get_method('EditorInspector', '_property_selected')
  bind_editorinspector__resource_selected = api_core.godot_method_bind_get_method('EditorInspector', '_resource_selected')
  bind_editorinspector__vscroll_changed = api_core.godot_method_bind_get_method('EditorInspector', '_vscroll_changed')
  bind_editorinspector_refresh = api_core.godot_method_bind_get_method('EditorInspector', 'refresh')

############################Generated class###################################
cdef class EditorInspector(ScrollContainer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInspector")())
##################################Generated Methods#########################################
  def  _edit_request_change(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__edit_request_change,self.godot_owner,[NULL,],NULL)
  def  _feature_profile_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__feature_profile_changed,self.godot_owner,[NULL,],NULL)
  def  _filter_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__filter_changed,self.godot_owner,[NULL,],NULL)
  def  _multiple_properties_changed(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__multiple_properties_changed,self.godot_owner,[NULL,],NULL)
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__node_removed,self.godot_owner,[NULL,],NULL)
  def  _object_id_selected(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__object_id_selected,self.godot_owner,[NULL,],NULL)
  def  _property_changed(self, arg0arg1arg2arg3):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_changed,self.godot_owner,[NULL,],NULL)
  def  _property_changed_update_all(self, arg0arg1arg2arg3):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_changed_update_all,self.godot_owner,[NULL,],NULL)
  def  _property_checked(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_checked,self.godot_owner,[NULL,],NULL)
  def  _property_keyed(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_keyed,self.godot_owner,[NULL,],NULL)
  def  _property_keyed_with_value(self, arg0arg1arg2):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_keyed_with_value,self.godot_owner,[NULL,],NULL)
  def  _property_selected(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_selected,self.godot_owner,[NULL,],NULL)
  def  _resource_selected(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__resource_selected,self.godot_owner,[NULL,],NULL)
  def  _vscroll_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__vscroll_changed,self.godot_owner,[NULL,],NULL)
  def  refresh(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector_refresh,self.godot_owner,[NULL,],NULL)
