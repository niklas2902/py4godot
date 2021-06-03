
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorfilesystemdirectory_find_dir_index
cdef godot_method_bind *bind_editorfilesystemdirectory_find_file_index
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_count
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_import_is_valid
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_path
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_script_class_extends
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_script_class_name
cdef godot_method_bind *bind_editorfilesystemdirectory_get_file_type
cdef godot_method_bind *bind_editorfilesystemdirectory_get_name
cdef godot_method_bind *bind_editorfilesystemdirectory_get_parent
cdef godot_method_bind *bind_editorfilesystemdirectory_get_path
cdef godot_method_bind *bind_editorfilesystemdirectory_get_subdir
cdef godot_method_bind *bind_editorfilesystemdirectory_get_subdir_count
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorfilesystemdirectory_find_dir_index = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'find_dir_index')
  bind_editorfilesystemdirectory_find_file_index = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'find_file_index')
  bind_editorfilesystemdirectory_get_file = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file')
  bind_editorfilesystemdirectory_get_file_count = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_count')
  bind_editorfilesystemdirectory_get_file_import_is_valid = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_import_is_valid')
  bind_editorfilesystemdirectory_get_file_path = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_path')
  bind_editorfilesystemdirectory_get_file_script_class_extends = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_script_class_extends')
  bind_editorfilesystemdirectory_get_file_script_class_name = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_script_class_name')
  bind_editorfilesystemdirectory_get_file_type = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_file_type')
  bind_editorfilesystemdirectory_get_name = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_name')
  bind_editorfilesystemdirectory_get_parent = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_parent')
  bind_editorfilesystemdirectory_get_path = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_path')
  bind_editorfilesystemdirectory_get_subdir = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_subdir')
  bind_editorfilesystemdirectory_get_subdir_count = api_core.godot_method_bind_get_method('EditorFileSystemDirectory', 'get_subdir_count')

############################Generated class###################################
cdef class EditorFileSystemDirectory(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFileSystemDirectory")())
##################################Generated Methods#########################################
  def  find_dir_index(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_find_dir_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  find_file_index(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_find_file_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_file(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_file_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_file_import_is_valid(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_import_is_valid,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_file_path(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_file_script_class_extends(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_script_class_extends,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_file_script_class_name(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_script_class_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_file_type(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_file_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_parent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_parent,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_subdir(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_subdir,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_subdir_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystemdirectory_get_subdir_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

