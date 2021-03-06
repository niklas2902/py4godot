from classes.ResourceImporter cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorimportplugin_get_import_options
cdef godot_method_bind *bind_editorimportplugin_get_import_order
cdef godot_method_bind *bind_editorimportplugin_get_importer_name
cdef godot_method_bind *bind_editorimportplugin_get_option_visibility
cdef godot_method_bind *bind_editorimportplugin_get_preset_count
cdef godot_method_bind *bind_editorimportplugin_get_preset_name
cdef godot_method_bind *bind_editorimportplugin_get_priority
cdef godot_method_bind *bind_editorimportplugin_get_recognized_extensions
cdef godot_method_bind *bind_editorimportplugin_get_resource_type
cdef godot_method_bind *bind_editorimportplugin_get_save_extension
cdef godot_method_bind *bind_editorimportplugin_get_visible_name
cdef godot_method_bind *bind_editorimportplugin_import
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorimportplugin_get_import_options = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_import_options')
  bind_editorimportplugin_get_import_order = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_import_order')
  bind_editorimportplugin_get_importer_name = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_importer_name')
  bind_editorimportplugin_get_option_visibility = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_option_visibility')
  bind_editorimportplugin_get_preset_count = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_preset_count')
  bind_editorimportplugin_get_preset_name = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_preset_name')
  bind_editorimportplugin_get_priority = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_priority')
  bind_editorimportplugin_get_recognized_extensions = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_recognized_extensions')
  bind_editorimportplugin_get_resource_type = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_resource_type')
  bind_editorimportplugin_get_save_extension = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_save_extension')
  bind_editorimportplugin_get_visible_name = api_core.godot_method_bind_get_method('EditorImportPlugin', 'get_visible_name')
  bind_editorimportplugin_import = api_core.godot_method_bind_get_method('EditorImportPlugin', 'import')

############################Generated class###################################
cdef class EditorImportPlugin(ResourceImporter):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorImportPlugin")())
##################################Generated Methods#########################################
  def  get_import_options(self, preset):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_import_options,self.godot_owner,[NULL,],&ret)
  def  get_import_order(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_import_order,self.godot_owner,[NULL,],&ret)
  def  get_importer_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_importer_name,self.godot_owner,[NULL,],&ret)
  def  get_option_visibility(self, optionoptions):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_option_visibility,self.godot_owner,[NULL,],&ret)
  def  get_preset_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_preset_count,self.godot_owner,[NULL,],&ret)
  def  get_preset_name(self, preset):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_preset_name,self.godot_owner,[NULL,],&ret)
  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_priority,self.godot_owner,[NULL,],&ret)
  def  get_recognized_extensions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_recognized_extensions,self.godot_owner,[NULL,],&ret)
  def  get_resource_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_resource_type,self.godot_owner,[NULL,],&ret)
  def  get_save_extension(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_save_extension,self.godot_owner,[NULL,],&ret)
  def  get_visible_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_visible_name,self.godot_owner,[NULL,],&ret)
  def  import_(self, source_filesave_pathoptionsplatform_variantsgen_files):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_import,self.godot_owner,[NULL,],&ret)
