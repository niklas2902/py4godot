from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class UndoRedo(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("UndoRedo")())
##################################Generated Methods#########################################
  def  add_do_method(self, objectmethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_method,self.godot_owner,[NULL,],NULL)
  def  add_do_property(self, objectpropertyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_property,self.godot_owner,[NULL,],NULL)
  def  add_do_reference(self, object):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_do_reference,self.godot_owner,[NULL,],NULL)
  def  add_undo_method(self, objectmethod):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_method,self.godot_owner,[NULL,],NULL)
  def  add_undo_property(self, objectpropertyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_property,self.godot_owner,[NULL,],NULL)
  def  add_undo_reference(self, object):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_add_undo_reference,self.godot_owner,[NULL,],NULL)
  def  clear_history(self, increase_version):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_clear_history,self.godot_owner,[NULL,],NULL)
  def  commit_action(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_commit_action,self.godot_owner,[NULL,],NULL)
  def  create_action(self, namemerge_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_undoredo_create_action,self.godot_owner,[NULL,],NULL)
  def  get_current_action_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_get_current_action_name,self.godot_owner,[NULL,],&ret)
  def  get_version(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_get_version,self.godot_owner,[NULL,],&ret)
  def  has_redo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_has_redo,self.godot_owner,[NULL,],&ret)
  def  has_undo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_has_undo,self.godot_owner,[NULL,],&ret)
  def  is_commiting_action(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_is_commiting_action,self.godot_owner,[NULL,],&ret)
  def  redo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_redo,self.godot_owner,[NULL,],&ret)
  def  undo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_undoredo_undo,self.godot_owner,[NULL,],&ret)
