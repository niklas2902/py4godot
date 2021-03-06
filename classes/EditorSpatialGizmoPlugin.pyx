from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorspatialgizmoplugin_add_material
cdef godot_method_bind *bind_editorspatialgizmoplugin_can_be_hidden
cdef godot_method_bind *bind_editorspatialgizmoplugin_commit_handle
cdef godot_method_bind *bind_editorspatialgizmoplugin_create_gizmo
cdef godot_method_bind *bind_editorspatialgizmoplugin_create_handle_material
cdef godot_method_bind *bind_editorspatialgizmoplugin_create_icon_material
cdef godot_method_bind *bind_editorspatialgizmoplugin_create_material
cdef godot_method_bind *bind_editorspatialgizmoplugin_get_handle_name
cdef godot_method_bind *bind_editorspatialgizmoplugin_get_handle_value
cdef godot_method_bind *bind_editorspatialgizmoplugin_get_material
cdef godot_method_bind *bind_editorspatialgizmoplugin_get_name
cdef godot_method_bind *bind_editorspatialgizmoplugin_get_priority
cdef godot_method_bind *bind_editorspatialgizmoplugin_has_gizmo
cdef godot_method_bind *bind_editorspatialgizmoplugin_is_handle_highlighted
cdef godot_method_bind *bind_editorspatialgizmoplugin_is_selectable_when_hidden
cdef godot_method_bind *bind_editorspatialgizmoplugin_redraw
cdef godot_method_bind *bind_editorspatialgizmoplugin_set_handle
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorspatialgizmoplugin_add_material = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'add_material')
  bind_editorspatialgizmoplugin_can_be_hidden = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'can_be_hidden')
  bind_editorspatialgizmoplugin_commit_handle = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'commit_handle')
  bind_editorspatialgizmoplugin_create_gizmo = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'create_gizmo')
  bind_editorspatialgizmoplugin_create_handle_material = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'create_handle_material')
  bind_editorspatialgizmoplugin_create_icon_material = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'create_icon_material')
  bind_editorspatialgizmoplugin_create_material = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'create_material')
  bind_editorspatialgizmoplugin_get_handle_name = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'get_handle_name')
  bind_editorspatialgizmoplugin_get_handle_value = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'get_handle_value')
  bind_editorspatialgizmoplugin_get_material = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'get_material')
  bind_editorspatialgizmoplugin_get_name = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'get_name')
  bind_editorspatialgizmoplugin_get_priority = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'get_priority')
  bind_editorspatialgizmoplugin_has_gizmo = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'has_gizmo')
  bind_editorspatialgizmoplugin_is_handle_highlighted = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'is_handle_highlighted')
  bind_editorspatialgizmoplugin_is_selectable_when_hidden = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'is_selectable_when_hidden')
  bind_editorspatialgizmoplugin_redraw = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'redraw')
  bind_editorspatialgizmoplugin_set_handle = api_core.godot_method_bind_get_method('EditorSpatialGizmoPlugin', 'set_handle')

############################Generated class###################################
cdef class EditorSpatialGizmoPlugin(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSpatialGizmoPlugin")())
##################################Generated Methods#########################################
  def  add_material(self, namematerial):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_add_material,self.godot_owner,[NULL,],NULL)
  def  can_be_hidden(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_can_be_hidden,self.godot_owner,[NULL,],&ret)
  def  commit_handle(self, gizmoindexrestorecancel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_commit_handle,self.godot_owner,[NULL,],NULL)
  def  create_gizmo(self, spatial):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorSpatialGizmo ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_gizmo,self.godot_owner,[NULL,],&ret)
  def  create_handle_material(self, namebillboard):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_handle_material,self.godot_owner,[NULL,],NULL)
  def  create_icon_material(self, nametextureon_topcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_icon_material,self.godot_owner,[NULL,],NULL)
  def  create_material(self, namecolorbillboardon_topuse_vertex_color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_material,self.godot_owner,[NULL,],NULL)
  def  get_handle_name(self, gizmoindex):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_handle_name,self.godot_owner,[NULL,],&ret)
  def  get_handle_value(self, gizmoindex):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_handle_value,self.godot_owner,[NULL,],&ret)
  def  get_material(self, namegizmo):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_material,self.godot_owner,[NULL,],&ret)
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_name,self.godot_owner,[NULL,],&ret)
  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_priority,self.godot_owner,[NULL,],&ret)
  def  has_gizmo(self, spatial):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_has_gizmo,self.godot_owner,[NULL,],&ret)
  def  is_handle_highlighted(self, gizmoindex):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_is_handle_highlighted,self.godot_owner,[NULL,],&ret)
  def  is_selectable_when_hidden(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_is_selectable_when_hidden,self.godot_owner,[NULL,],&ret)
  def  redraw(self, gizmo):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_redraw,self.godot_owner,[NULL,],NULL)
  def  set_handle(self, gizmoindexcamerapoint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_set_handle,self.godot_owner,[NULL,],NULL)
