
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
cimport classes.ResourceImporter 

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
cdef class EditorImportPlugin(classes.ResourceImporter.ResourceImporter):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorImportPlugin")())
##################################Generated Methods#########################################
  def  get_import_options(self,  int preset):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &preset
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_import_options,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_import_order(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_import_order,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_importer_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_importer_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_option_visibility(self,  String option,  Dictionary options):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &option._native
    args[1] = &options._native
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_option_visibility,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_preset_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_preset_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_preset_name(self,  int preset):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &preset
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_preset_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_recognized_extensions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_recognized_extensions,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_resource_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_resource_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_save_extension(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_save_extension,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_visible_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_get_visible_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  import_(self,  String source_file,  String save_path,  Dictionary options,  Array platform_variants,  Array gen_files):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &source_file._native
    args[1] = &save_path._native
    args[2] = &options._native
    args[3] = &platform_variants._native
    args[4] = &gen_files._native
    api_core.godot_method_bind_ptrcall(bind_editorimportplugin_import,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

