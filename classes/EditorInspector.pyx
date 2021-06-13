
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
cimport classes.Object
cimport classes.Node
cimport classes.Resource
cimport classes.ScrollContainer 

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
cdef class EditorInspector(classes.ScrollContainer.ScrollContainer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInspector")())
##################################Generated Methods#########################################
  def  _edit_request_change(self,  classes.Object.Object arg0,  String arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = arg0.godot_owner
    args[1] = &arg1._native
    api_core.godot_method_bind_ptrcall(bind_editorinspector__edit_request_change,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _feature_profile_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorinspector__feature_profile_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _filter_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_editorinspector__filter_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _multiple_properties_changed(self,  PoolStringArray arg0,  Array arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1._native
    api_core.godot_method_bind_ptrcall(bind_editorinspector__multiple_properties_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _node_removed(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__node_removed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _object_id_selected(self,  String arg0,  int arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_editorinspector__object_id_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_changed(self,  String arg0,  Variant arg1,  String arg2,  bool arg3):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &arg0._native
    args[1] = &arg1._native
    args[2] = &arg2._native
    args[3] = &arg3
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_changed_update_all(self,  String arg0,  Variant arg1,  String arg2,  bool arg3):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &arg0._native
    args[1] = &arg1._native
    args[2] = &arg2._native
    args[3] = &arg3
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_changed_update_all,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_checked(self,  String arg0,  bool arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_checked,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_keyed(self,  String arg0,  bool arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_keyed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_keyed_with_value(self,  String arg0,  Variant arg1,  bool arg2):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &arg0._native
    args[1] = &arg1._native
    args[2] = &arg2
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_keyed_with_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _property_selected(self,  String arg0,  int arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_editorinspector__property_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _resource_selected(self,  String arg0,  classes.Resource.Resource arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = arg1.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspector__resource_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _vscroll_changed(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_editorinspector__vscroll_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  refresh(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorinspector_refresh,self.godot_owner,NULL,NULL)
    hello('hallo2')
