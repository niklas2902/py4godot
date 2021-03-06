from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorfeatureprofile_get_feature_name
cdef godot_method_bind *bind_editorfeatureprofile_is_class_disabled
cdef godot_method_bind *bind_editorfeatureprofile_is_class_editor_disabled
cdef godot_method_bind *bind_editorfeatureprofile_is_class_property_disabled
cdef godot_method_bind *bind_editorfeatureprofile_is_feature_disabled
cdef godot_method_bind *bind_editorfeatureprofile_load_from_file
cdef godot_method_bind *bind_editorfeatureprofile_save_to_file
cdef godot_method_bind *bind_editorfeatureprofile_set_disable_class
cdef godot_method_bind *bind_editorfeatureprofile_set_disable_class_editor
cdef godot_method_bind *bind_editorfeatureprofile_set_disable_class_property
cdef godot_method_bind *bind_editorfeatureprofile_set_disable_feature
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorfeatureprofile_get_feature_name = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'get_feature_name')
  bind_editorfeatureprofile_is_class_disabled = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'is_class_disabled')
  bind_editorfeatureprofile_is_class_editor_disabled = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'is_class_editor_disabled')
  bind_editorfeatureprofile_is_class_property_disabled = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'is_class_property_disabled')
  bind_editorfeatureprofile_is_feature_disabled = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'is_feature_disabled')
  bind_editorfeatureprofile_load_from_file = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'load_from_file')
  bind_editorfeatureprofile_save_to_file = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'save_to_file')
  bind_editorfeatureprofile_set_disable_class = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'set_disable_class')
  bind_editorfeatureprofile_set_disable_class_editor = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'set_disable_class_editor')
  bind_editorfeatureprofile_set_disable_class_property = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'set_disable_class_property')
  bind_editorfeatureprofile_set_disable_feature = api_core.godot_method_bind_get_method('EditorFeatureProfile', 'set_disable_feature')

############################Generated class###################################
cdef class EditorFeatureProfile(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFeatureProfile")())
##################################Generated Methods#########################################
  def  get_feature_name(self, feature):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_get_feature_name,self.godot_owner,[NULL,],&ret)
  def  is_class_disabled(self, class_name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_disabled,self.godot_owner,[NULL,],&ret)
  def  is_class_editor_disabled(self, class_name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_editor_disabled,self.godot_owner,[NULL,],&ret)
  def  is_class_property_disabled(self, class_nameproperty):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_property_disabled,self.godot_owner,[NULL,],&ret)
  def  is_feature_disabled(self, feature):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_feature_disabled,self.godot_owner,[NULL,],&ret)
  def  load_from_file(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_load_from_file,self.godot_owner,[NULL,],&ret)
  def  save_to_file(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_save_to_file,self.godot_owner,[NULL,],&ret)
  def  set_disable_class(self, class_namedisable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class,self.godot_owner,[NULL,],NULL)
  def  set_disable_class_editor(self, class_namedisable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class_editor,self.godot_owner,[NULL,],NULL)
  def  set_disable_class_property(self, class_namepropertydisable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class_property,self.godot_owner,[NULL,],NULL)
  def  set_disable_feature(self, featuredisable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_feature,self.godot_owner,[NULL,],NULL)
