from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class EditorFileSystem(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorFileSystem")())
##################################Generated Methods#########################################
  def  get_file_type(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_file_type,self.godot_owner,[NULL,],&ret)
  def  get_filesystem(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileSystemDirectory ret
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_filesystem,self.godot_owner,[NULL,],&ret)
  def  get_filesystem_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorFileSystemDirectory ret
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_filesystem_path,self.godot_owner,[NULL,],&ret)
  def  get_scanning_progress(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_get_scanning_progress,self.godot_owner,[NULL,],&ret)
  def  is_scanning(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_is_scanning,self.godot_owner,[NULL,],&ret)
  def  scan(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_scan,self.godot_owner,[NULL,],NULL)
  def  scan_sources(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_scan_sources,self.godot_owner,[NULL,],NULL)
  def  update_file(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_update_file,self.godot_owner,[NULL,],NULL)
  def  update_script_classes(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorfilesystem_update_script_classes,self.godot_owner,[NULL,],NULL)
