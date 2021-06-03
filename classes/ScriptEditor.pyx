
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
cimport classes.Reference
cimport classes.Node
cimport classes.Reference
cimport classes.Resource
cimport classes.Script
cimport classes.InputEvent
cimport classes.Reference
cimport classes.InputEvent
cimport classes.Control
cimport classes.Control
cimport classes.Control
cimport classes.PanelContainer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scripteditor__add_callback
cdef godot_method_bind *bind_scripteditor__autosave_scripts
cdef godot_method_bind *bind_scripteditor__breaked
cdef godot_method_bind *bind_scripteditor__clear_execution
cdef godot_method_bind *bind_scripteditor__close_all_tabs
cdef godot_method_bind *bind_scripteditor__close_current_tab
cdef godot_method_bind *bind_scripteditor__close_discard_current_tab
cdef godot_method_bind *bind_scripteditor__close_docs_tab
cdef godot_method_bind *bind_scripteditor__close_other_tabs
cdef godot_method_bind *bind_scripteditor__copy_script_path
cdef godot_method_bind *bind_scripteditor__editor_pause
cdef godot_method_bind *bind_scripteditor__editor_play
cdef godot_method_bind *bind_scripteditor__editor_settings_changed
cdef godot_method_bind *bind_scripteditor__editor_stop
cdef godot_method_bind *bind_scripteditor__file_dialog_action
cdef godot_method_bind *bind_scripteditor__filter_methods_text_changed
cdef godot_method_bind *bind_scripteditor__filter_scripts_text_changed
cdef godot_method_bind *bind_scripteditor__get_debug_tooltip
cdef godot_method_bind *bind_scripteditor__goto_script_line
cdef godot_method_bind *bind_scripteditor__goto_script_line2
cdef godot_method_bind *bind_scripteditor__help_class_goto
cdef godot_method_bind *bind_scripteditor__help_class_open
cdef godot_method_bind *bind_scripteditor__help_overview_selected
cdef godot_method_bind *bind_scripteditor__help_search
cdef godot_method_bind *bind_scripteditor__history_back
cdef godot_method_bind *bind_scripteditor__history_forward
cdef godot_method_bind *bind_scripteditor__live_auto_reload_running_scripts
cdef godot_method_bind *bind_scripteditor__members_overview_selected
cdef godot_method_bind *bind_scripteditor__menu_option
cdef godot_method_bind *bind_scripteditor__on_find_in_files_modified_files
cdef godot_method_bind *bind_scripteditor__on_find_in_files_requested
cdef godot_method_bind *bind_scripteditor__on_find_in_files_result_selected
cdef godot_method_bind *bind_scripteditor__open_recent_script
cdef godot_method_bind *bind_scripteditor__reload_scripts
cdef godot_method_bind *bind_scripteditor__request_help
cdef godot_method_bind *bind_scripteditor__res_saved_callback
cdef godot_method_bind *bind_scripteditor__resave_scripts
cdef godot_method_bind *bind_scripteditor__save_history
cdef godot_method_bind *bind_scripteditor__script_changed
cdef godot_method_bind *bind_scripteditor__script_created
cdef godot_method_bind *bind_scripteditor__script_list_gui_input
cdef godot_method_bind *bind_scripteditor__script_selected
cdef godot_method_bind *bind_scripteditor__script_split_dragged
cdef godot_method_bind *bind_scripteditor__set_execution
cdef godot_method_bind *bind_scripteditor__show_debugger
cdef godot_method_bind *bind_scripteditor__start_find_in_files
cdef godot_method_bind *bind_scripteditor__tab_changed
cdef godot_method_bind *bind_scripteditor__theme_option
cdef godot_method_bind *bind_scripteditor__toggle_members_overview_alpha_sort
cdef godot_method_bind *bind_scripteditor__tree_changed
cdef godot_method_bind *bind_scripteditor__unhandled_input
cdef godot_method_bind *bind_scripteditor__update_autosave_timer
cdef godot_method_bind *bind_scripteditor__update_members_overview
cdef godot_method_bind *bind_scripteditor__update_recent_scripts
cdef godot_method_bind *bind_scripteditor__update_script_connections
cdef godot_method_bind *bind_scripteditor__update_script_names
cdef godot_method_bind *bind_scripteditor_can_drop_data_fw
cdef godot_method_bind *bind_scripteditor_drop_data_fw
cdef godot_method_bind *bind_scripteditor_get_current_script
cdef godot_method_bind *bind_scripteditor_get_drag_data_fw
cdef godot_method_bind *bind_scripteditor_get_open_scripts
cdef godot_method_bind *bind_scripteditor_goto_line
cdef godot_method_bind *bind_scripteditor_open_script_create_dialog
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scripteditor__add_callback = api_core.godot_method_bind_get_method('ScriptEditor', '_add_callback')
  bind_scripteditor__autosave_scripts = api_core.godot_method_bind_get_method('ScriptEditor', '_autosave_scripts')
  bind_scripteditor__breaked = api_core.godot_method_bind_get_method('ScriptEditor', '_breaked')
  bind_scripteditor__clear_execution = api_core.godot_method_bind_get_method('ScriptEditor', '_clear_execution')
  bind_scripteditor__close_all_tabs = api_core.godot_method_bind_get_method('ScriptEditor', '_close_all_tabs')
  bind_scripteditor__close_current_tab = api_core.godot_method_bind_get_method('ScriptEditor', '_close_current_tab')
  bind_scripteditor__close_discard_current_tab = api_core.godot_method_bind_get_method('ScriptEditor', '_close_discard_current_tab')
  bind_scripteditor__close_docs_tab = api_core.godot_method_bind_get_method('ScriptEditor', '_close_docs_tab')
  bind_scripteditor__close_other_tabs = api_core.godot_method_bind_get_method('ScriptEditor', '_close_other_tabs')
  bind_scripteditor__copy_script_path = api_core.godot_method_bind_get_method('ScriptEditor', '_copy_script_path')
  bind_scripteditor__editor_pause = api_core.godot_method_bind_get_method('ScriptEditor', '_editor_pause')
  bind_scripteditor__editor_play = api_core.godot_method_bind_get_method('ScriptEditor', '_editor_play')
  bind_scripteditor__editor_settings_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_editor_settings_changed')
  bind_scripteditor__editor_stop = api_core.godot_method_bind_get_method('ScriptEditor', '_editor_stop')
  bind_scripteditor__file_dialog_action = api_core.godot_method_bind_get_method('ScriptEditor', '_file_dialog_action')
  bind_scripteditor__filter_methods_text_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_filter_methods_text_changed')
  bind_scripteditor__filter_scripts_text_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_filter_scripts_text_changed')
  bind_scripteditor__get_debug_tooltip = api_core.godot_method_bind_get_method('ScriptEditor', '_get_debug_tooltip')
  bind_scripteditor__goto_script_line = api_core.godot_method_bind_get_method('ScriptEditor', '_goto_script_line')
  bind_scripteditor__goto_script_line2 = api_core.godot_method_bind_get_method('ScriptEditor', '_goto_script_line2')
  bind_scripteditor__help_class_goto = api_core.godot_method_bind_get_method('ScriptEditor', '_help_class_goto')
  bind_scripteditor__help_class_open = api_core.godot_method_bind_get_method('ScriptEditor', '_help_class_open')
  bind_scripteditor__help_overview_selected = api_core.godot_method_bind_get_method('ScriptEditor', '_help_overview_selected')
  bind_scripteditor__help_search = api_core.godot_method_bind_get_method('ScriptEditor', '_help_search')
  bind_scripteditor__history_back = api_core.godot_method_bind_get_method('ScriptEditor', '_history_back')
  bind_scripteditor__history_forward = api_core.godot_method_bind_get_method('ScriptEditor', '_history_forward')
  bind_scripteditor__live_auto_reload_running_scripts = api_core.godot_method_bind_get_method('ScriptEditor', '_live_auto_reload_running_scripts')
  bind_scripteditor__members_overview_selected = api_core.godot_method_bind_get_method('ScriptEditor', '_members_overview_selected')
  bind_scripteditor__menu_option = api_core.godot_method_bind_get_method('ScriptEditor', '_menu_option')
  bind_scripteditor__on_find_in_files_modified_files = api_core.godot_method_bind_get_method('ScriptEditor', '_on_find_in_files_modified_files')
  bind_scripteditor__on_find_in_files_requested = api_core.godot_method_bind_get_method('ScriptEditor', '_on_find_in_files_requested')
  bind_scripteditor__on_find_in_files_result_selected = api_core.godot_method_bind_get_method('ScriptEditor', '_on_find_in_files_result_selected')
  bind_scripteditor__open_recent_script = api_core.godot_method_bind_get_method('ScriptEditor', '_open_recent_script')
  bind_scripteditor__reload_scripts = api_core.godot_method_bind_get_method('ScriptEditor', '_reload_scripts')
  bind_scripteditor__request_help = api_core.godot_method_bind_get_method('ScriptEditor', '_request_help')
  bind_scripteditor__res_saved_callback = api_core.godot_method_bind_get_method('ScriptEditor', '_res_saved_callback')
  bind_scripteditor__resave_scripts = api_core.godot_method_bind_get_method('ScriptEditor', '_resave_scripts')
  bind_scripteditor__save_history = api_core.godot_method_bind_get_method('ScriptEditor', '_save_history')
  bind_scripteditor__script_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_script_changed')
  bind_scripteditor__script_created = api_core.godot_method_bind_get_method('ScriptEditor', '_script_created')
  bind_scripteditor__script_list_gui_input = api_core.godot_method_bind_get_method('ScriptEditor', '_script_list_gui_input')
  bind_scripteditor__script_selected = api_core.godot_method_bind_get_method('ScriptEditor', '_script_selected')
  bind_scripteditor__script_split_dragged = api_core.godot_method_bind_get_method('ScriptEditor', '_script_split_dragged')
  bind_scripteditor__set_execution = api_core.godot_method_bind_get_method('ScriptEditor', '_set_execution')
  bind_scripteditor__show_debugger = api_core.godot_method_bind_get_method('ScriptEditor', '_show_debugger')
  bind_scripteditor__start_find_in_files = api_core.godot_method_bind_get_method('ScriptEditor', '_start_find_in_files')
  bind_scripteditor__tab_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_tab_changed')
  bind_scripteditor__theme_option = api_core.godot_method_bind_get_method('ScriptEditor', '_theme_option')
  bind_scripteditor__toggle_members_overview_alpha_sort = api_core.godot_method_bind_get_method('ScriptEditor', '_toggle_members_overview_alpha_sort')
  bind_scripteditor__tree_changed = api_core.godot_method_bind_get_method('ScriptEditor', '_tree_changed')
  bind_scripteditor__unhandled_input = api_core.godot_method_bind_get_method('ScriptEditor', '_unhandled_input')
  bind_scripteditor__update_autosave_timer = api_core.godot_method_bind_get_method('ScriptEditor', '_update_autosave_timer')
  bind_scripteditor__update_members_overview = api_core.godot_method_bind_get_method('ScriptEditor', '_update_members_overview')
  bind_scripteditor__update_recent_scripts = api_core.godot_method_bind_get_method('ScriptEditor', '_update_recent_scripts')
  bind_scripteditor__update_script_connections = api_core.godot_method_bind_get_method('ScriptEditor', '_update_script_connections')
  bind_scripteditor__update_script_names = api_core.godot_method_bind_get_method('ScriptEditor', '_update_script_names')
  bind_scripteditor_can_drop_data_fw = api_core.godot_method_bind_get_method('ScriptEditor', 'can_drop_data_fw')
  bind_scripteditor_drop_data_fw = api_core.godot_method_bind_get_method('ScriptEditor', 'drop_data_fw')
  bind_scripteditor_get_current_script = api_core.godot_method_bind_get_method('ScriptEditor', 'get_current_script')
  bind_scripteditor_get_drag_data_fw = api_core.godot_method_bind_get_method('ScriptEditor', 'get_drag_data_fw')
  bind_scripteditor_get_open_scripts = api_core.godot_method_bind_get_method('ScriptEditor', 'get_open_scripts')
  bind_scripteditor_goto_line = api_core.godot_method_bind_get_method('ScriptEditor', 'goto_line')
  bind_scripteditor_open_script_create_dialog = api_core.godot_method_bind_get_method('ScriptEditor', 'open_script_create_dialog')

############################Generated class###################################
cdef class ScriptEditor(classes.PanelContainer.PanelContainer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ScriptEditor")())
##################################Generated Methods#########################################
  def  _add_callback(self,  classes.Object.Object arg0,  String arg1,  PoolStringArray arg2):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = arg0.godot_owner
    args[1] = &arg1._native
    args[2] = &arg2._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__add_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _autosave_scripts(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__autosave_scripts,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _breaked(self,  bool arg0,  bool arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_scripteditor__breaked,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _clear_execution(self,  classes.Reference.Reference arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__clear_execution,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _close_all_tabs(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__close_all_tabs,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _close_current_tab(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__close_current_tab,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _close_discard_current_tab(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__close_discard_current_tab,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _close_docs_tab(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__close_docs_tab,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _close_other_tabs(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__close_other_tabs,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _copy_script_path(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__copy_script_path,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _editor_pause(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__editor_pause,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _editor_play(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__editor_play,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _editor_settings_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__editor_settings_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _editor_stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__editor_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _file_dialog_action(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__file_dialog_action,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _filter_methods_text_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__filter_methods_text_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _filter_scripts_text_changed(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__filter_scripts_text_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _get_debug_tooltip(self,  String arg0,  classes.Node.Node arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = arg1.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__get_debug_tooltip,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _goto_script_line(self,  classes.Reference.Reference arg0,  int arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = arg0.godot_owner
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_scripteditor__goto_script_line,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _goto_script_line2(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__goto_script_line2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _help_class_goto(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__help_class_goto,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _help_class_open(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__help_class_open,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _help_overview_selected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__help_overview_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _help_search(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__help_search,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _history_back(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__history_back,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _history_forward(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__history_forward,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _live_auto_reload_running_scripts(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__live_auto_reload_running_scripts,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _members_overview_selected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__members_overview_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _menu_option(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__menu_option,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _on_find_in_files_modified_files(self,  PoolStringArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__on_find_in_files_modified_files,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _on_find_in_files_requested(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__on_find_in_files_requested,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _on_find_in_files_result_selected(self,  String arg0,  int arg1,  int arg2,  int arg3):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &arg0._native
    args[1] = &arg1
    args[2] = &arg2
    args[3] = &arg3
    api_core.godot_method_bind_ptrcall(bind_scripteditor__on_find_in_files_result_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _open_recent_script(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__open_recent_script,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _reload_scripts(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__reload_scripts,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _request_help(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__request_help,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _res_saved_callback(self,  classes.Resource.Resource arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__res_saved_callback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _resave_scripts(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor__resave_scripts,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _save_history(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__save_history,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _script_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__script_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _script_created(self,  classes.Script.Script arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__script_created,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _script_list_gui_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__script_list_gui_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _script_selected(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__script_selected,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _script_split_dragged(self,  float arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__script_split_dragged,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_execution(self,  classes.Reference.Reference arg0,  int arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = arg0.godot_owner
    args[1] = &arg1
    api_core.godot_method_bind_ptrcall(bind_scripteditor__set_execution,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _show_debugger(self,  bool arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__show_debugger,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _start_find_in_files(self,  bool arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__start_find_in_files,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tab_changed(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__tab_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _theme_option(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__theme_option,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _toggle_members_overview_alpha_sort(self,  bool arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_scripteditor__toggle_members_overview_alpha_sort,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__tree_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _unhandled_input(self,  classes.InputEvent.InputEvent arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor__unhandled_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_autosave_timer(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__update_autosave_timer,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_members_overview(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__update_members_overview,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_recent_scripts(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__update_recent_scripts,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_script_connections(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__update_script_connections,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_script_names(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_scripteditor__update_script_names,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  can_drop_data_fw(self,  Vector2 point,  Variant data,  classes.Control.Control from_):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &point._native
    args[1] = &data._native
    args[2] = from_.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor_can_drop_data_fw,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  drop_data_fw(self,  Vector2 point,  Variant data,  classes.Control.Control from_):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &point._native
    args[1] = &data._native
    args[2] = from_.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor_drop_data_fw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_current_script(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scripteditor_get_current_script,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_drag_data_fw(self,  Vector2 point,  classes.Control.Control from_):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &point._native
    args[1] = from_.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scripteditor_get_drag_data_fw,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_open_scripts(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_scripteditor_get_open_scripts,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  goto_line(self,  int line_number):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &line_number
    api_core.godot_method_bind_ptrcall(bind_scripteditor_goto_line,self.godot_owner,args,NULL)
    hello('hallo2')
  def  open_script_create_dialog(self,  String base_name,  String base_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &base_name._native
    args[1] = &base_path._native
    api_core.godot_method_bind_ptrcall(bind_scripteditor_open_script_create_dialog,self.godot_owner,args,NULL)
    hello('hallo2')
