
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
cimport classes.Control
cimport classes.Control
cimport classes.Control
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorinspectorplugin_add_custom_control
cdef godot_method_bind *bind_editorinspectorplugin_add_property_editor
cdef godot_method_bind *bind_editorinspectorplugin_add_property_editor_for_multiple_properties
cdef godot_method_bind *bind_editorinspectorplugin_can_handle
cdef godot_method_bind *bind_editorinspectorplugin_parse_begin
cdef godot_method_bind *bind_editorinspectorplugin_parse_category
cdef godot_method_bind *bind_editorinspectorplugin_parse_end
cdef godot_method_bind *bind_editorinspectorplugin_parse_property
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorinspectorplugin_add_custom_control = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'add_custom_control')
  bind_editorinspectorplugin_add_property_editor = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'add_property_editor')
  bind_editorinspectorplugin_add_property_editor_for_multiple_properties = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'add_property_editor_for_multiple_properties')
  bind_editorinspectorplugin_can_handle = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'can_handle')
  bind_editorinspectorplugin_parse_begin = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'parse_begin')
  bind_editorinspectorplugin_parse_category = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'parse_category')
  bind_editorinspectorplugin_parse_end = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'parse_end')
  bind_editorinspectorplugin_parse_property = api_core.godot_method_bind_get_method('EditorInspectorPlugin', 'parse_property')

############################Generated class###################################
cdef class EditorInspectorPlugin(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInspectorPlugin")())
##################################Generated Methods#########################################
  def  add_custom_control(self,  classes.Control.Control control):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = control.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_custom_control,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_property_editor(self,  String property,  classes.Control.Control editor):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = editor.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_property_editor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_property_editor_for_multiple_properties(self,  String label,  PoolStringArray properties,  classes.Control.Control editor):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &label._native
    args[1] = &properties._native
    args[2] = editor.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_property_editor_for_multiple_properties,self.godot_owner,args,NULL)
    hello('hallo2')
  def  can_handle(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_can_handle,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  parse_begin(self,  classes.Object.Object object):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = object.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  parse_category(self,  classes.Object.Object object,  String category):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &category._native
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_category,self.godot_owner,args,NULL)
    hello('hallo2')
  def  parse_end(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_end,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  parse_property(self,  classes.Object.Object object,  int type,  String path,  int hint,  String hint_text,  int usage):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[6]

    args[0] = object.godot_owner
    args[1] = &type
    args[2] = &path._native
    args[3] = &hint
    args[4] = &hint_text._native
    args[5] = &usage
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_property,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

