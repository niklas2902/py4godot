from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class EditorInspectorPlugin(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorInspectorPlugin")())
##################################Generated Methods#########################################
  def  add_custom_control(self, control):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_custom_control,self.godot_owner,[NULL,],NULL)
  def  add_property_editor(self, propertyeditor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_property_editor,self.godot_owner,[NULL,],NULL)
  def  add_property_editor_for_multiple_properties(self, labelpropertieseditor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_add_property_editor_for_multiple_properties,self.godot_owner,[NULL,],NULL)
  def  can_handle(self, object):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_can_handle,self.godot_owner,[NULL,],&ret)
  def  parse_begin(self, object):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_begin,self.godot_owner,[NULL,],NULL)
  def  parse_category(self, objectcategory):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_category,self.godot_owner,[NULL,],NULL)
  def  parse_end(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_end,self.godot_owner,[NULL,],NULL)
  def  parse_property(self, objecttypepathhinthint_textusage):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorinspectorplugin_parse_property,self.godot_owner,[NULL,],&ret)
