
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
cimport classes.ConfirmationDialog 

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
cdef class ScriptCreateDialog(classes.ConfirmationDialog.ConfirmationDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScriptCreateDialog")())
##################################Generated Methods#########################################
  def  _browse_class_in_tree(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__browse_class_in_tree,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _browse_path(self,  bool arg0,  bool arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__browse_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _built_in_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__built_in_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _class_name_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__class_name_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _create(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__create,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _file_selected(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__file_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _lang_changed(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__lang_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _parent_name_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__parent_name_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _path_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _path_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _path_hbox_sorted(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__path_hbox_sorted,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _template_changed(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog__template_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  config(self,  String inherits,  String path,  bool built_in_enabled,  bool load_enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &inherits._native
    args[1] = &path._native
    args[2] = &built_in_enabled
    args[3] = &load_enabled
    api_core.godot_method_bind_ptrcall(bind_scriptcreatedialog_config,self.godot_owner,args,NULL)
    hello('hallo2')
