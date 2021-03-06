from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorexportplugin__export_begin
cdef godot_method_bind *bind_editorexportplugin__export_end
cdef godot_method_bind *bind_editorexportplugin__export_file
cdef godot_method_bind *bind_editorexportplugin_add_file
cdef godot_method_bind *bind_editorexportplugin_add_ios_bundle_file
cdef godot_method_bind *bind_editorexportplugin_add_ios_cpp_code
cdef godot_method_bind *bind_editorexportplugin_add_ios_framework
cdef godot_method_bind *bind_editorexportplugin_add_ios_linker_flags
cdef godot_method_bind *bind_editorexportplugin_add_ios_plist_content
cdef godot_method_bind *bind_editorexportplugin_add_shared_object
cdef godot_method_bind *bind_editorexportplugin_skip
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorexportplugin__export_begin = api_core.godot_method_bind_get_method('EditorExportPlugin', '_export_begin')
  bind_editorexportplugin__export_end = api_core.godot_method_bind_get_method('EditorExportPlugin', '_export_end')
  bind_editorexportplugin__export_file = api_core.godot_method_bind_get_method('EditorExportPlugin', '_export_file')
  bind_editorexportplugin_add_file = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_file')
  bind_editorexportplugin_add_ios_bundle_file = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_ios_bundle_file')
  bind_editorexportplugin_add_ios_cpp_code = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_ios_cpp_code')
  bind_editorexportplugin_add_ios_framework = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_ios_framework')
  bind_editorexportplugin_add_ios_linker_flags = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_ios_linker_flags')
  bind_editorexportplugin_add_ios_plist_content = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_ios_plist_content')
  bind_editorexportplugin_add_shared_object = api_core.godot_method_bind_get_method('EditorExportPlugin', 'add_shared_object')
  bind_editorexportplugin_skip = api_core.godot_method_bind_get_method('EditorExportPlugin', 'skip')

############################Generated class###################################
cdef class EditorExportPlugin(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorExportPlugin")())
##################################Generated Methods#########################################
  def  _export_begin(self, featuresis_debugpathflags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_begin,self.godot_owner,[NULL,],NULL)
  def  _export_end(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_end,self.godot_owner,[NULL,],NULL)
  def  _export_file(self, pathtypefeatures):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_file,self.godot_owner,[NULL,],NULL)
  def  add_file(self, pathfileremap):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_file,self.godot_owner,[NULL,],NULL)
  def  add_ios_bundle_file(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_bundle_file,self.godot_owner,[NULL,],NULL)
  def  add_ios_cpp_code(self, code):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_cpp_code,self.godot_owner,[NULL,],NULL)
  def  add_ios_framework(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_framework,self.godot_owner,[NULL,],NULL)
  def  add_ios_linker_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_linker_flags,self.godot_owner,[NULL,],NULL)
  def  add_ios_plist_content(self, plist_content):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_plist_content,self.godot_owner,[NULL,],NULL)
  def  add_shared_object(self, pathtags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_shared_object,self.godot_owner,[NULL,],NULL)
  def  skip(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_skip,self.godot_owner,[NULL,],NULL)
