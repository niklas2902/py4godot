
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
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorfilesystem_get_file_type
cdef godot_method_bind *bind_editorfilesystem_get_filesystem
cdef godot_method_bind *bind_editorfilesystem_get_filesystem_path
cdef godot_method_bind *bind_editorfilesystem_get_scanning_progress
cdef godot_method_bind *bind_editorfilesystem_is_scanning
cdef godot_method_bind *bind_editorfilesystem_scan
cdef godot_method_bind *bind_editorfilesystem_scan_sources
cdef godot_method_bind *bind_editorfilesystem_update_file
cdef godot_method_bind *bind_editorfilesystem_update_script_classes
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorfilesystem_get_file_type = api_core.godot_method_bind_get_method('EditorFileSystem', 'get_file_type')
  bind_editorfilesystem_get_filesystem = api_core.godot_method_bind_get_method('EditorFileSystem', 'get_filesystem')
  bind_editorfilesystem_get_filesystem_path = api_core.godot_method_bind_get_method('EditorFileSystem', 'get_filesystem_path')
  bind_editorfilesystem_get_scanning_progress = api_core.godot_method_bind_get_method('EditorFileSystem', 'get_scanning_progress')
  bind_editorfilesystem_is_scanning = api_core.godot_method_bind_get_method('EditorFileSystem', 'is_scanning')
  bind_editorfilesystem_scan = api_core.godot_method_bind_get_method('EditorFileSystem', 'scan')
  bind_editorfilesystem_scan_sources = api_core.godot_method_bind_get_method('EditorFileSystem', 'scan_sources')
  bind_editorfilesystem_update_file = api_core.godot_method_bind_get_method('EditorFileSystem', 'update_file')
  bind_editorfilesystem_update_script_classes = api_core.godot_method_bind_get_method('EditorFileSystem', 'update_script_classes')

############################Generated class###################################
cdef class EditorFileSystem(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFileSystem")())
##################################Generated Methods#########################################
  def  get_file_type(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_file_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_filesystem(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_filesystem,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_filesystem_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_filesystem_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_scanning_progress(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_scanning_progress,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_scanning(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_is_scanning,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  scan(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_scan,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  scan_sources(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_scan_sources,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  update_file(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_update_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_script_classes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_update_script_classes,self.godot_owner,NULL,NULL)
    hello('hallo2')
