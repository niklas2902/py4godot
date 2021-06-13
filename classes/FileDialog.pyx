
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
cimport classes.InputEvent
cimport classes.ConfirmationDialog 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_filedialog__action_pressed
cdef godot_method_bind *bind_filedialog__cancel_pressed
cdef godot_method_bind *bind_filedialog__dir_entered
cdef godot_method_bind *bind_filedialog__file_entered
cdef godot_method_bind *bind_filedialog__filter_selected
cdef godot_method_bind *bind_filedialog__go_up
cdef godot_method_bind *bind_filedialog__make_dir
cdef godot_method_bind *bind_filedialog__make_dir_confirm
cdef godot_method_bind *bind_filedialog__save_confirm_pressed
cdef godot_method_bind *bind_filedialog__select_drive
cdef godot_method_bind *bind_filedialog__tree_item_activated
cdef godot_method_bind *bind_filedialog__tree_multi_selected
cdef godot_method_bind *bind_filedialog__tree_selected
cdef godot_method_bind *bind_filedialog__unhandled_input
cdef godot_method_bind *bind_filedialog__update_dir
cdef godot_method_bind *bind_filedialog__update_file_list
cdef godot_method_bind *bind_filedialog__update_file_name
cdef godot_method_bind *bind_filedialog_add_filter
cdef godot_method_bind *bind_filedialog_clear_filters
cdef godot_method_bind *bind_filedialog_deselect_items
cdef godot_method_bind *bind_filedialog_get_access
cdef godot_method_bind *bind_filedialog_get_current_dir
cdef godot_method_bind *bind_filedialog_get_current_file
cdef godot_method_bind *bind_filedialog_get_current_path
cdef godot_method_bind *bind_filedialog_get_filters
cdef godot_method_bind *bind_filedialog_get_line_edit
cdef godot_method_bind *bind_filedialog_get_mode
cdef godot_method_bind *bind_filedialog_get_vbox
cdef godot_method_bind *bind_filedialog_invalidate
cdef godot_method_bind *bind_filedialog_is_mode_overriding_title
cdef godot_method_bind *bind_filedialog_is_showing_hidden_files
cdef godot_method_bind *bind_filedialog_set_access
cdef godot_method_bind *bind_filedialog_set_current_dir
cdef godot_method_bind *bind_filedialog_set_current_file
cdef godot_method_bind *bind_filedialog_set_current_path
cdef godot_method_bind *bind_filedialog_set_filters
cdef godot_method_bind *bind_filedialog_set_mode
cdef godot_method_bind *bind_filedialog_set_mode_overrides_title
cdef godot_method_bind *bind_filedialog_set_show_hidden_files
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_filedialog__action_pressed = api_core.godot_method_bind_get_method('FileDialog', '_action_pressed')
  bind_filedialog__cancel_pressed = api_core.godot_method_bind_get_method('FileDialog', '_cancel_pressed')
  bind_filedialog__dir_entered = api_core.godot_method_bind_get_method('FileDialog', '_dir_entered')
  bind_filedialog__file_entered = api_core.godot_method_bind_get_method('FileDialog', '_file_entered')
  bind_filedialog__filter_selected = api_core.godot_method_bind_get_method('FileDialog', '_filter_selected')
  bind_filedialog__go_up = api_core.godot_method_bind_get_method('FileDialog', '_go_up')
  bind_filedialog__make_dir = api_core.godot_method_bind_get_method('FileDialog', '_make_dir')
  bind_filedialog__make_dir_confirm = api_core.godot_method_bind_get_method('FileDialog', '_make_dir_confirm')
  bind_filedialog__save_confirm_pressed = api_core.godot_method_bind_get_method('FileDialog', '_save_confirm_pressed')
  bind_filedialog__select_drive = api_core.godot_method_bind_get_method('FileDialog', '_select_drive')
  bind_filedialog__tree_item_activated = api_core.godot_method_bind_get_method('FileDialog', '_tree_item_activated')
  bind_filedialog__tree_multi_selected = api_core.godot_method_bind_get_method('FileDialog', '_tree_multi_selected')
  bind_filedialog__tree_selected = api_core.godot_method_bind_get_method('FileDialog', '_tree_selected')
  bind_filedialog__unhandled_input = api_core.godot_method_bind_get_method('FileDialog', '_unhandled_input')
  bind_filedialog__update_dir = api_core.godot_method_bind_get_method('FileDialog', '_update_dir')
  bind_filedialog__update_file_list = api_core.godot_method_bind_get_method('FileDialog', '_update_file_list')
  bind_filedialog__update_file_name = api_core.godot_method_bind_get_method('FileDialog', '_update_file_name')
  bind_filedialog_add_filter = api_core.godot_method_bind_get_method('FileDialog', 'add_filter')
  bind_filedialog_clear_filters = api_core.godot_method_bind_get_method('FileDialog', 'clear_filters')
  bind_filedialog_deselect_items = api_core.godot_method_bind_get_method('FileDialog', 'deselect_items')
  bind_filedialog_get_access = api_core.godot_method_bind_get_method('FileDialog', 'get_access')
  bind_filedialog_get_current_dir = api_core.godot_method_bind_get_method('FileDialog', 'get_current_dir')
  bind_filedialog_get_current_file = api_core.godot_method_bind_get_method('FileDialog', 'get_current_file')
  bind_filedialog_get_current_path = api_core.godot_method_bind_get_method('FileDialog', 'get_current_path')
  bind_filedialog_get_filters = api_core.godot_method_bind_get_method('FileDialog', 'get_filters')
  bind_filedialog_get_line_edit = api_core.godot_method_bind_get_method('FileDialog', 'get_line_edit')
  bind_filedialog_get_mode = api_core.godot_method_bind_get_method('FileDialog', 'get_mode')
  bind_filedialog_get_vbox = api_core.godot_method_bind_get_method('FileDialog', 'get_vbox')
  bind_filedialog_invalidate = api_core.godot_method_bind_get_method('FileDialog', 'invalidate')
  bind_filedialog_is_mode_overriding_title = api_core.godot_method_bind_get_method('FileDialog', 'is_mode_overriding_title')
  bind_filedialog_is_showing_hidden_files = api_core.godot_method_bind_get_method('FileDialog', 'is_showing_hidden_files')
  bind_filedialog_set_access = api_core.godot_method_bind_get_method('FileDialog', 'set_access')
  bind_filedialog_set_current_dir = api_core.godot_method_bind_get_method('FileDialog', 'set_current_dir')
  bind_filedialog_set_current_file = api_core.godot_method_bind_get_method('FileDialog', 'set_current_file')
  bind_filedialog_set_current_path = api_core.godot_method_bind_get_method('FileDialog', 'set_current_path')
  bind_filedialog_set_filters = api_core.godot_method_bind_get_method('FileDialog', 'set_filters')
  bind_filedialog_set_mode = api_core.godot_method_bind_get_method('FileDialog', 'set_mode')
  bind_filedialog_set_mode_overrides_title = api_core.godot_method_bind_get_method('FileDialog', 'set_mode_overrides_title')
  bind_filedialog_set_show_hidden_files = api_core.godot_method_bind_get_method('FileDialog', 'set_show_hidden_files')

############################Generated class###################################
cdef class FileDialog(classes.ConfirmationDialog.ConfirmationDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("FileDialog")())
##################################Generated Properties#########################################
  @property
  def access(self): 
    return self.get_access()
  @access.setter 
  def access(self,value): 
    self.set_access(value)
  @property
  def current_dir(self): 
    return self.get_current_dir()
  @current_dir.setter 
  def current_dir(self,value): 
    self.set_current_dir(value)
  @property
  def current_file(self): 
    return self.get_current_file()
  @current_file.setter 
  def current_file(self,value): 
    self.set_current_file(value)
  @property
  def current_path(self): 
    return self.get_current_path()
  @current_path.setter 
  def current_path(self,value): 
    self.set_current_path(value)
  @property
  def filters(self): 
    return self.get_filters()
  @filters.setter 
  def filters(self,value): 
    self.set_filters(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def mode_overrides_title(self): 
    return self.get_mode_overrides_title()
  @mode_overrides_title.setter 
  def mode_overrides_title(self,value): 
    self.set_mode_overrides_title(value)
  @property
  def show_hidden_files(self): 
    return self.get_show_hidden_files()
  @show_hidden_files.setter 
  def show_hidden_files(self,value): 
    self.set_show_hidden_files(value)

##################################Generated Methods#########################################
  def  _action_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__action_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _cancel_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__cancel_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _dir_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_filedialog__dir_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _file_entered(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_filedialog__file_entered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _filter_selected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_filedialog__filter_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _go_up(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__go_up,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _make_dir(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__make_dir,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _make_dir_confirm(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__make_dir_confirm,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _save_confirm_pressed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__save_confirm_pressed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _select_drive(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_filedialog__select_drive,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tree_item_activated(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__tree_item_activated,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _tree_multi_selected(self,  classes.Object.Object arg0,  int arg1,  bool arg2):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = arg0.godot_owner
    args[1] = &arg1
    args[2] = &arg2
    api_core.godot_method_bind_ptrcall(bind_filedialog__tree_multi_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tree_selected(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__tree_selected,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _unhandled_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_filedialog__unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_dir(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__update_dir,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_file_list(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__update_file_list,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_file_name(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog__update_file_name,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_filter(self,  String filter):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filter._native
    api_core.godot_method_bind_ptrcall(bind_filedialog_add_filter,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_filters(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog_clear_filters,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  deselect_items(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog_deselect_items,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_access(self):
    cdef godot_object *_owner = self.godot_owner

    cdef FileDialog_Access* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_access,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_current_dir(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_current_dir,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_current_file(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_current_file,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_current_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_current_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_filters(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_filters,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_line_edit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_line_edit,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef FileDialog_Mode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_vbox(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_get_vbox,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  invalidate(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_filedialog_invalidate,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  is_mode_overriding_title(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_is_mode_overriding_title,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_showing_hidden_files(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_filedialog_is_showing_hidden_files,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_access(self,  int access):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &access
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_access,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_dir(self,  String dir):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &dir._native
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_current_dir,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_file(self,  String file):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file._native
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_current_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_current_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filters(self,  PoolStringArray filters):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filters._native
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_filters,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode_overrides_title(self,  bool override):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &override
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_mode_overrides_title,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_show_hidden_files(self,  bool show):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &show
    api_core.godot_method_bind_ptrcall(bind_filedialog_set_show_hidden_files,self.godot_owner,args,NULL)
    hello('hallo2')
