
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorvcsinterface__commit
cdef godot_method_bind *bind_editorvcsinterface__get_file_diff
cdef godot_method_bind *bind_editorvcsinterface__get_modified_files_data
cdef godot_method_bind *bind_editorvcsinterface__get_project_name
cdef godot_method_bind *bind_editorvcsinterface__get_vcs_name
cdef godot_method_bind *bind_editorvcsinterface__initialize
cdef godot_method_bind *bind_editorvcsinterface__is_vcs_initialized
cdef godot_method_bind *bind_editorvcsinterface__shut_down
cdef godot_method_bind *bind_editorvcsinterface__stage_file
cdef godot_method_bind *bind_editorvcsinterface__unstage_file
cdef godot_method_bind *bind_editorvcsinterface_commit
cdef godot_method_bind *bind_editorvcsinterface_get_file_diff
cdef godot_method_bind *bind_editorvcsinterface_get_modified_files_data
cdef godot_method_bind *bind_editorvcsinterface_get_project_name
cdef godot_method_bind *bind_editorvcsinterface_get_vcs_name
cdef godot_method_bind *bind_editorvcsinterface_initialize
cdef godot_method_bind *bind_editorvcsinterface_is_addon_ready
cdef godot_method_bind *bind_editorvcsinterface_is_vcs_initialized
cdef godot_method_bind *bind_editorvcsinterface_shut_down
cdef godot_method_bind *bind_editorvcsinterface_stage_file
cdef godot_method_bind *bind_editorvcsinterface_unstage_file
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorvcsinterface__commit = api_core.godot_method_bind_get_method('EditorVCSInterface', '_commit')
  bind_editorvcsinterface__get_file_diff = api_core.godot_method_bind_get_method('EditorVCSInterface', '_get_file_diff')
  bind_editorvcsinterface__get_modified_files_data = api_core.godot_method_bind_get_method('EditorVCSInterface', '_get_modified_files_data')
  bind_editorvcsinterface__get_project_name = api_core.godot_method_bind_get_method('EditorVCSInterface', '_get_project_name')
  bind_editorvcsinterface__get_vcs_name = api_core.godot_method_bind_get_method('EditorVCSInterface', '_get_vcs_name')
  bind_editorvcsinterface__initialize = api_core.godot_method_bind_get_method('EditorVCSInterface', '_initialize')
  bind_editorvcsinterface__is_vcs_initialized = api_core.godot_method_bind_get_method('EditorVCSInterface', '_is_vcs_initialized')
  bind_editorvcsinterface__shut_down = api_core.godot_method_bind_get_method('EditorVCSInterface', '_shut_down')
  bind_editorvcsinterface__stage_file = api_core.godot_method_bind_get_method('EditorVCSInterface', '_stage_file')
  bind_editorvcsinterface__unstage_file = api_core.godot_method_bind_get_method('EditorVCSInterface', '_unstage_file')
  bind_editorvcsinterface_commit = api_core.godot_method_bind_get_method('EditorVCSInterface', 'commit')
  bind_editorvcsinterface_get_file_diff = api_core.godot_method_bind_get_method('EditorVCSInterface', 'get_file_diff')
  bind_editorvcsinterface_get_modified_files_data = api_core.godot_method_bind_get_method('EditorVCSInterface', 'get_modified_files_data')
  bind_editorvcsinterface_get_project_name = api_core.godot_method_bind_get_method('EditorVCSInterface', 'get_project_name')
  bind_editorvcsinterface_get_vcs_name = api_core.godot_method_bind_get_method('EditorVCSInterface', 'get_vcs_name')
  bind_editorvcsinterface_initialize = api_core.godot_method_bind_get_method('EditorVCSInterface', 'initialize')
  bind_editorvcsinterface_is_addon_ready = api_core.godot_method_bind_get_method('EditorVCSInterface', 'is_addon_ready')
  bind_editorvcsinterface_is_vcs_initialized = api_core.godot_method_bind_get_method('EditorVCSInterface', 'is_vcs_initialized')
  bind_editorvcsinterface_shut_down = api_core.godot_method_bind_get_method('EditorVCSInterface', 'shut_down')
  bind_editorvcsinterface_stage_file = api_core.godot_method_bind_get_method('EditorVCSInterface', 'stage_file')
  bind_editorvcsinterface_unstage_file = api_core.godot_method_bind_get_method('EditorVCSInterface', 'unstage_file')

############################Generated class###################################
cdef class EditorVCSInterface(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorVCSInterface")())
##################################Generated Methods#########################################
  def  _commit(self,  String msg):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &msg._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__commit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _get_file_diff(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__get_file_diff,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _get_modified_files_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__get_modified_files_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _get_project_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__get_project_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _get_vcs_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__get_vcs_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  _initialize(self,  String project_root_path):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &project_root_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__initialize,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _is_vcs_initialized(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__is_vcs_initialized,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _shut_down(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__shut_down,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _stage_file(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__stage_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _unstage_file(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface__unstage_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  commit(self,  String msg):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &msg._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_commit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_file_diff(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_get_file_diff,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_modified_files_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_get_modified_files_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_project_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_get_project_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_vcs_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_get_vcs_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  initialize(self,  String project_root_path):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &project_root_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_initialize,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_addon_ready(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_is_addon_ready,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_vcs_initialized(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_is_vcs_initialized,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shut_down(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_shut_down,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  stage_file(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_stage_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unstage_file(self,  String file_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &file_path._native
    api_core.godot_method_bind_ptrcall(bind_editorvcsinterface_unstage_file,self.godot_owner,args,NULL)
    hello('hallo2')
