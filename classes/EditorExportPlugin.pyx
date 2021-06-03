
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
cimport classes.Reference 

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
cdef class EditorExportPlugin(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorExportPlugin")())
##################################Generated Methods#########################################
  def  _export_begin(self,  PoolStringArray features,  bool is_debug,  String path,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &features._native
    args[1] = &is_debug
    args[2] = &path._native
    args[3] = &flags
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _export_end(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_end,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _export_file(self,  String path,  String type,  PoolStringArray features):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &type._native
    args[2] = &features._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin__export_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_file(self,  String path,  PoolByteArray file,  bool remap):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &path._native
    args[1] = &file._native
    args[2] = &remap
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_ios_bundle_file(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_bundle_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_ios_cpp_code(self,  String code):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &code._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_cpp_code,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_ios_framework(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_framework,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_ios_linker_flags(self,  String flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flags._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_linker_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_ios_plist_content(self,  String plist_content):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &plist_content._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_ios_plist_content,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_shared_object(self,  String path,  PoolStringArray tags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &tags._native
    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_add_shared_object,self.godot_owner,args,NULL)
    hello('hallo2')
  def  skip(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorexportplugin_skip,self.godot_owner,NULL,NULL)
    hello('hallo2')
