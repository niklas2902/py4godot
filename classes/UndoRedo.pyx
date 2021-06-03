
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_undoredo_add_do_method
cdef godot_method_bind *bind_undoredo_add_do_property
cdef godot_method_bind *bind_undoredo_add_do_reference
cdef godot_method_bind *bind_undoredo_add_undo_method
cdef godot_method_bind *bind_undoredo_add_undo_property
cdef godot_method_bind *bind_undoredo_add_undo_reference
cdef godot_method_bind *bind_undoredo_clear_history
cdef godot_method_bind *bind_undoredo_commit_action
cdef godot_method_bind *bind_undoredo_create_action
cdef godot_method_bind *bind_undoredo_get_current_action_name
cdef godot_method_bind *bind_undoredo_get_version
cdef godot_method_bind *bind_undoredo_has_redo
cdef godot_method_bind *bind_undoredo_has_undo
cdef godot_method_bind *bind_undoredo_is_commiting_action
cdef godot_method_bind *bind_undoredo_redo
cdef godot_method_bind *bind_undoredo_undo
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_undoredo_add_do_method = api_core.godot_method_bind_get_method('UndoRedo', 'add_do_method')
  bind_undoredo_add_do_property = api_core.godot_method_bind_get_method('UndoRedo', 'add_do_property')
  bind_undoredo_add_do_reference = api_core.godot_method_bind_get_method('UndoRedo', 'add_do_reference')
  bind_undoredo_add_undo_method = api_core.godot_method_bind_get_method('UndoRedo', 'add_undo_method')
  bind_undoredo_add_undo_property = api_core.godot_method_bind_get_method('UndoRedo', 'add_undo_property')
  bind_undoredo_add_undo_reference = api_core.godot_method_bind_get_method('UndoRedo', 'add_undo_reference')
  bind_undoredo_clear_history = api_core.godot_method_bind_get_method('UndoRedo', 'clear_history')
  bind_undoredo_commit_action = api_core.godot_method_bind_get_method('UndoRedo', 'commit_action')
  bind_undoredo_create_action = api_core.godot_method_bind_get_method('UndoRedo', 'create_action')
  bind_undoredo_get_current_action_name = api_core.godot_method_bind_get_method('UndoRedo', 'get_current_action_name')
  bind_undoredo_get_version = api_core.godot_method_bind_get_method('UndoRedo', 'get_version')
  bind_undoredo_has_redo = api_core.godot_method_bind_get_method('UndoRedo', 'has_redo')
  bind_undoredo_has_undo = api_core.godot_method_bind_get_method('UndoRedo', 'has_undo')
  bind_undoredo_is_commiting_action = api_core.godot_method_bind_get_method('UndoRedo', 'is_commiting_action')
  bind_undoredo_redo = api_core.godot_method_bind_get_method('UndoRedo', 'redo')
  bind_undoredo_undo = api_core.godot_method_bind_get_method('UndoRedo', 'undo')

############################Generated class###################################
cdef class UndoRedo(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("UndoRedo")())
##################################Generated Methods#########################################
  def  add_do_method(self,  classes.Object.Object object,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &method._native
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_method,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_do_property(self,  classes.Object.Object object,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = object.godot_owner
    args[1] = &property._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_property,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_do_reference(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_reference,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_undo_method(self,  classes.Object.Object object,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &method._native
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_method,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_undo_property(self,  classes.Object.Object object,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = object.godot_owner
    args[1] = &property._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_property,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_undo_reference(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_reference,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_history(self,  bool increase_version):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &increase_version
    api_core.godot_method_bind_ptrcall(bind_undoredo_clear_history,self.godot_owner,args,NULL)
    hello('hallo2')
  def  commit_action(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_undoredo_commit_action,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_action(self,  String name,  int merge_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &merge_mode
    api_core.godot_method_bind_ptrcall(bind_undoredo_create_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_current_action_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_get_current_action_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_version(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_get_version,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_redo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_has_redo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_undo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_has_undo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_commiting_action(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_is_commiting_action,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  redo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_redo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  undo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_undoredo_undo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

