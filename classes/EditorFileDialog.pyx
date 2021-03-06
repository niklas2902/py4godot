from classes.ConfirmationDialog cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorfiledialog__action_pressed
cdef godot_method_bind *bind_editorfiledialog__cancel_pressed
cdef godot_method_bind *bind_editorfiledialog__dir_entered
cdef godot_method_bind *bind_editorfiledialog__favorite_move_down
cdef godot_method_bind *bind_editorfiledialog__favorite_move_up
cdef godot_method_bind *bind_editorfiledialog__favorite_pressed
cdef godot_method_bind *bind_editorfiledialog__favorite_selected
cdef godot_method_bind *bind_editorfiledialog__file_entered
cdef godot_method_bind *bind_editorfiledialog__filter_selected
cdef godot_method_bind *bind_editorfiledialog__go_back
cdef godot_method_bind *bind_editorfiledialog__go_forward
cdef godot_method_bind *bind_editorfiledialog__go_up
cdef godot_method_bind *bind_editorfiledialog__item_db_selected
cdef godot_method_bind *bind_editorfiledialog__item_list_item_rmb_selected
cdef godot_method_bind *bind_editorfiledialog__item_list_rmb_clicked
cdef godot_method_bind *bind_editorfiledialog__item_menu_id_pressed
cdef godot_method_bind *bind_editorfiledialog__item_selected
cdef godot_method_bind *bind_editorfiledialog__items_clear_selection
cdef godot_method_bind *bind_editorfiledialog__make_dir
cdef godot_method_bind *bind_editorfiledialog__make_dir_confirm
cdef godot_method_bind *bind_editorfiledialog__multi_selected
cdef godot_method_bind *bind_editorfiledialog__recent_selected
cdef godot_method_bind *bind_editorfiledialog__save_confirm_pressed
cdef godot_method_bind *bind_editorfiledialog__select_drive
cdef godot_method_bind *bind_editorfiledialog__thumbnail_done
cdef godot_method_bind *bind_editorfiledialog__thumbnail_result
cdef godot_method_bind *bind_editorfiledialog__unhandled_input
cdef godot_method_bind *bind_editorfiledialog__update_dir
cdef godot_method_bind *bind_editorfiledialog__update_file_list
cdef godot_method_bind *bind_editorfiledialog__update_file_name
cdef godot_method_bind *bind_editorfiledialog_add_filter
cdef godot_method_bind *bind_editorfiledialog_clear_filters
cdef godot_method_bind *bind_editorfiledialog_get_access
cdef godot_method_bind *bind_editorfiledialog_get_current_dir
cdef godot_method_bind *bind_editorfiledialog_get_current_file
cdef godot_method_bind *bind_editorfiledialog_get_current_path
cdef godot_method_bind *bind_editorfiledialog_get_display_mode
cdef godot_method_bind *bind_editorfiledialog_get_mode
cdef godot_method_bind *bind_editorfiledialog_get_vbox
cdef godot_method_bind *bind_editorfiledialog_invalidate
cdef godot_method_bind *bind_editorfiledialog_is_overwrite_warning_disabled
cdef godot_method_bind *bind_editorfiledialog_is_showing_hidden_files
cdef godot_method_bind *bind_editorfiledialog_set_access
cdef godot_method_bind *bind_editorfiledialog_set_current_dir
cdef godot_method_bind *bind_editorfiledialog_set_current_file
cdef godot_method_bind *bind_editorfiledialog_set_current_path
cdef godot_method_bind *bind_editorfiledialog_set_disable_overwrite_warning
cdef godot_method_bind *bind_editorfiledialog_set_display_mode
cdef godot_method_bind *bind_editorfiledialog_set_mode
cdef godot_method_bind *bind_editorfiledialog_set_show_hidden_files
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorfiledialog__action_pressed = api_core.godot_method_bind_get_method('EditorFileDialog', '_action_pressed')
  bind_editorfiledialog__cancel_pressed = api_core.godot_method_bind_get_method('EditorFileDialog', '_cancel_pressed')
  bind_editorfiledialog__dir_entered = api_core.godot_method_bind_get_method('EditorFileDialog', '_dir_entered')
  bind_editorfiledialog__favorite_move_down = api_core.godot_method_bind_get_method('EditorFileDialog', '_favorite_move_down')
  bind_editorfiledialog__favorite_move_up = api_core.godot_method_bind_get_method('EditorFileDialog', '_favorite_move_up')
  bind_editorfiledialog__favorite_pressed = api_core.godot_method_bind_get_method('EditorFileDialog', '_favorite_pressed')
  bind_editorfiledialog__favorite_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_favorite_selected')
  bind_editorfiledialog__file_entered = api_core.godot_method_bind_get_method('EditorFileDialog', '_file_entered')
  bind_editorfiledialog__filter_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_filter_selected')
  bind_editorfiledialog__go_back = api_core.godot_method_bind_get_method('EditorFileDialog', '_go_back')
  bind_editorfiledialog__go_forward = api_core.godot_method_bind_get_method('EditorFileDialog', '_go_forward')
  bind_editorfiledialog__go_up = api_core.godot_method_bind_get_method('EditorFileDialog', '_go_up')
  bind_editorfiledialog__item_db_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_item_db_selected')
  bind_editorfiledialog__item_list_item_rmb_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_item_list_item_rmb_selected')
  bind_editorfiledialog__item_list_rmb_clicked = api_core.godot_method_bind_get_method('EditorFileDialog', '_item_list_rmb_clicked')
  bind_editorfiledialog__item_menu_id_pressed = api_core.godot_method_bind_get_method('EditorFileDialog', '_item_menu_id_pressed')
  bind_editorfiledialog__item_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_item_selected')
  bind_editorfiledialog__items_clear_selection = api_core.godot_method_bind_get_method('EditorFileDialog', '_items_clear_selection')
  bind_editorfiledialog__make_dir = api_core.godot_method_bind_get_method('EditorFileDialog', '_make_dir')
  bind_editorfiledialog__make_dir_confirm = api_core.godot_method_bind_get_method('EditorFileDialog', '_make_dir_confirm')
  bind_editorfiledialog__multi_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_multi_selected')
  bind_editorfiledialog__recent_selected = api_core.godot_method_bind_get_method('EditorFileDialog', '_recent_selected')
  bind_editorfiledialog__save_confirm_pressed = api_core.godot_method_bind_get_method('EditorFileDialog', '_save_confirm_pressed')
  bind_editorfiledialog__select_drive = api_core.godot_method_bind_get_method('EditorFileDialog', '_select_drive')
  bind_editorfiledialog__thumbnail_done = api_core.godot_method_bind_get_method('EditorFileDialog', '_thumbnail_done')
  bind_editorfiledialog__thumbnail_result = api_core.godot_method_bind_get_method('EditorFileDialog', '_thumbnail_result')
  bind_editorfiledialog__unhandled_input = api_core.godot_method_bind_get_method('EditorFileDialog', '_unhandled_input')
  bind_editorfiledialog__update_dir = api_core.godot_method_bind_get_method('EditorFileDialog', '_update_dir')
  bind_editorfiledialog__update_file_list = api_core.godot_method_bind_get_method('EditorFileDialog', '_update_file_list')
  bind_editorfiledialog__update_file_name = api_core.godot_method_bind_get_method('EditorFileDialog', '_update_file_name')
  bind_editorfiledialog_add_filter = api_core.godot_method_bind_get_method('EditorFileDialog', 'add_filter')
  bind_editorfiledialog_clear_filters = api_core.godot_method_bind_get_method('EditorFileDialog', 'clear_filters')
  bind_editorfiledialog_get_access = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_access')
  bind_editorfiledialog_get_current_dir = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_current_dir')
  bind_editorfiledialog_get_current_file = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_current_file')
  bind_editorfiledialog_get_current_path = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_current_path')
  bind_editorfiledialog_get_display_mode = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_display_mode')
  bind_editorfiledialog_get_mode = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_mode')
  bind_editorfiledialog_get_vbox = api_core.godot_method_bind_get_method('EditorFileDialog', 'get_vbox')
  bind_editorfiledialog_invalidate = api_core.godot_method_bind_get_method('EditorFileDialog', 'invalidate')
  bind_editorfiledialog_is_overwrite_warning_disabled = api_core.godot_method_bind_get_method('EditorFileDialog', 'is_overwrite_warning_disabled')
  bind_editorfiledialog_is_showing_hidden_files = api_core.godot_method_bind_get_method('EditorFileDialog', 'is_showing_hidden_files')
  bind_editorfiledialog_set_access = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_access')
  bind_editorfiledialog_set_current_dir = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_current_dir')
  bind_editorfiledialog_set_current_file = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_current_file')
  bind_editorfiledialog_set_current_path = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_current_path')
  bind_editorfiledialog_set_disable_overwrite_warning = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_disable_overwrite_warning')
  bind_editorfiledialog_set_display_mode = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_display_mode')
  bind_editorfiledialog_set_mode = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_mode')
  bind_editorfiledialog_set_show_hidden_files = api_core.godot_method_bind_get_method('EditorFileDialog', 'set_show_hidden_files')

############################Generated class###################################
cdef class EditorFileDialog(ConfirmationDialog):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFileDialog")())
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
  def disable_overwrite_warning(self): 
    return self.get_disable_overwrite_warning()
  @disable_overwrite_warning.setter 
  def disable_overwrite_warning(self,value): 
    self.set_disable_overwrite_warning(value)
  @property
  def display_mode(self): 
    return self.get_display_mode()
  @display_mode.setter 
  def display_mode(self,value): 
    self.set_display_mode(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def show_hidden_files(self): 
    return self.get_show_hidden_files()
  @show_hidden_files.setter 
  def show_hidden_files(self,value): 
    self.set_show_hidden_files(value)

##################################Generated Methods#########################################
  def  _action_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__action_pressed,self.godot_owner,[NULL,],NULL)
  def  _cancel_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__cancel_pressed,self.godot_owner,[NULL,],NULL)
  def  _dir_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__dir_entered,self.godot_owner,[NULL,],NULL)
  def  _favorite_move_down(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__favorite_move_down,self.godot_owner,[NULL,],NULL)
  def  _favorite_move_up(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__favorite_move_up,self.godot_owner,[NULL,],NULL)
  def  _favorite_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__favorite_pressed,self.godot_owner,[NULL,],NULL)
  def  _favorite_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__favorite_selected,self.godot_owner,[NULL,],NULL)
  def  _file_entered(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__file_entered,self.godot_owner,[NULL,],NULL)
  def  _filter_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__filter_selected,self.godot_owner,[NULL,],NULL)
  def  _go_back(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__go_back,self.godot_owner,[NULL,],NULL)
  def  _go_forward(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__go_forward,self.godot_owner,[NULL,],NULL)
  def  _go_up(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__go_up,self.godot_owner,[NULL,],NULL)
  def  _item_db_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__item_db_selected,self.godot_owner,[NULL,],NULL)
  def  _item_list_item_rmb_selected(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__item_list_item_rmb_selected,self.godot_owner,[NULL,],NULL)
  def  _item_list_rmb_clicked(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__item_list_rmb_clicked,self.godot_owner,[NULL,],NULL)
  def  _item_menu_id_pressed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__item_menu_id_pressed,self.godot_owner,[NULL,],NULL)
  def  _item_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__item_selected,self.godot_owner,[NULL,],NULL)
  def  _items_clear_selection(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__items_clear_selection,self.godot_owner,[NULL,],NULL)
  def  _make_dir(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__make_dir,self.godot_owner,[NULL,],NULL)
  def  _make_dir_confirm(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__make_dir_confirm,self.godot_owner,[NULL,],NULL)
  def  _multi_selected(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__multi_selected,self.godot_owner,[NULL,],NULL)
  def  _recent_selected(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__recent_selected,self.godot_owner,[NULL,],NULL)
  def  _save_confirm_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__save_confirm_pressed,self.godot_owner,[NULL,],NULL)
  def  _select_drive(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__select_drive,self.godot_owner,[NULL,],NULL)
  def  _thumbnail_done(self, arg0arg1arg2arg3):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__thumbnail_done,self.godot_owner,[NULL,],NULL)
  def  _thumbnail_result(self, arg0arg1arg2arg3):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__thumbnail_result,self.godot_owner,[NULL,],NULL)
  def  _unhandled_input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__unhandled_input,self.godot_owner,[NULL,],NULL)
  def  _update_dir(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__update_dir,self.godot_owner,[NULL,],NULL)
  def  _update_file_list(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__update_file_list,self.godot_owner,[NULL,],NULL)
  def  _update_file_name(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog__update_file_name,self.godot_owner,[NULL,],NULL)
  def  add_filter(self, filter):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_add_filter,self.godot_owner,[NULL,],NULL)
  def  clear_filters(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_clear_filters,self.godot_owner,[NULL,],NULL)
  def  get_access(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileDialog::Access ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_access,self.godot_owner,[NULL,],&ret)
  def  get_current_dir(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_current_dir,self.godot_owner,[NULL,],&ret)
  def  get_current_file(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_current_file,self.godot_owner,[NULL,],&ret)
  def  get_current_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_current_path,self.godot_owner,[NULL,],&ret)
  def  get_display_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileDialog::DisplayMode ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_display_mode,self.godot_owner,[NULL,],&ret)
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileDialog::Mode ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_mode,self.godot_owner,[NULL,],&ret)
  def  get_vbox(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VBoxContainer ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_get_vbox,self.godot_owner,[NULL,],&ret)
  def  invalidate(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_invalidate,self.godot_owner,[NULL,],NULL)
  def  is_overwrite_warning_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_is_overwrite_warning_disabled,self.godot_owner,[NULL,],&ret)
  def  is_showing_hidden_files(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_is_showing_hidden_files,self.godot_owner,[NULL,],&ret)
  def  set_access(self, access):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_access,self.godot_owner,[NULL,],NULL)
  def  set_current_dir(self, dir):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_current_dir,self.godot_owner,[NULL,],NULL)
  def  set_current_file(self, file):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_current_file,self.godot_owner,[NULL,],NULL)
  def  set_current_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_current_path,self.godot_owner,[NULL,],NULL)
  def  set_disable_overwrite_warning(self, disable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_disable_overwrite_warning,self.godot_owner,[NULL,],NULL)
  def  set_display_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_display_mode,self.godot_owner,[NULL,],NULL)
  def  set_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_mode,self.godot_owner,[NULL,],NULL)
  def  set_show_hidden_files(self, show):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfiledialog_set_show_hidden_files,self.godot_owner,[NULL,],NULL)
