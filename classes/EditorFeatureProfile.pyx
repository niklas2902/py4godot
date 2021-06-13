
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Reference 

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
cdef class EditorFeatureProfile(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFeatureProfile")())
##################################Generated Methods#########################################
  def  get_feature_name(self,  int feature):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &feature
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_get_feature_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_class_disabled(self,  String class_name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &class_name._native
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_class_editor_disabled(self,  String class_name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &class_name._native
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_editor_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_class_property_disabled(self,  String class_name,  String property):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &class_name._native
    args[1] = &property._native
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_class_property_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_feature_disabled(self,  int feature):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &feature
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_is_feature_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_from_file(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_load_from_file,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_to_file(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_save_to_file,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_disable_class(self,  String class_name,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &class_name._native
    args[1] = &disable
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_class_editor(self,  String class_name,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &class_name._native
    args[1] = &disable
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class_editor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_class_property(self,  String class_name,  String property,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &class_name._native
    args[1] = &property._native
    args[2] = &disable
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_class_property,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disable_feature(self,  int feature,  bool disable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &feature
    args[1] = &disable
    api_core.godot_method_bind_ptrcall(bind_editorfeatureprofile_set_disable_feature,self.godot_owner,args,NULL)
    hello('hallo2')
