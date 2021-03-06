from classes.SpatialGizmo cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorspatialgizmo_add_collision_segments
cdef godot_method_bind *bind_editorspatialgizmo_add_collision_triangles
cdef godot_method_bind *bind_editorspatialgizmo_add_handles
cdef godot_method_bind *bind_editorspatialgizmo_add_lines
cdef godot_method_bind *bind_editorspatialgizmo_add_mesh
cdef godot_method_bind *bind_editorspatialgizmo_add_unscaled_billboard
cdef godot_method_bind *bind_editorspatialgizmo_clear
cdef godot_method_bind *bind_editorspatialgizmo_commit_handle
cdef godot_method_bind *bind_editorspatialgizmo_get_handle_name
cdef godot_method_bind *bind_editorspatialgizmo_get_handle_value
cdef godot_method_bind *bind_editorspatialgizmo_get_plugin
cdef godot_method_bind *bind_editorspatialgizmo_get_spatial_node
cdef godot_method_bind *bind_editorspatialgizmo_is_handle_highlighted
cdef godot_method_bind *bind_editorspatialgizmo_redraw
cdef godot_method_bind *bind_editorspatialgizmo_set_handle
cdef godot_method_bind *bind_editorspatialgizmo_set_hidden
cdef godot_method_bind *bind_editorspatialgizmo_set_spatial_node
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorspatialgizmo_add_collision_segments = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_collision_segments')
  bind_editorspatialgizmo_add_collision_triangles = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_collision_triangles')
  bind_editorspatialgizmo_add_handles = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_handles')
  bind_editorspatialgizmo_add_lines = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_lines')
  bind_editorspatialgizmo_add_mesh = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_mesh')
  bind_editorspatialgizmo_add_unscaled_billboard = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'add_unscaled_billboard')
  bind_editorspatialgizmo_clear = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'clear')
  bind_editorspatialgizmo_commit_handle = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'commit_handle')
  bind_editorspatialgizmo_get_handle_name = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'get_handle_name')
  bind_editorspatialgizmo_get_handle_value = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'get_handle_value')
  bind_editorspatialgizmo_get_plugin = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'get_plugin')
  bind_editorspatialgizmo_get_spatial_node = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'get_spatial_node')
  bind_editorspatialgizmo_is_handle_highlighted = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'is_handle_highlighted')
  bind_editorspatialgizmo_redraw = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'redraw')
  bind_editorspatialgizmo_set_handle = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'set_handle')
  bind_editorspatialgizmo_set_hidden = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'set_hidden')
  bind_editorspatialgizmo_set_spatial_node = api_core.godot_method_bind_get_method('EditorSpatialGizmo', 'set_spatial_node')

############################Generated class###################################
cdef class EditorSpatialGizmo(SpatialGizmo):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSpatialGizmo")())
##################################Generated Methods#########################################
  def  add_collision_segments(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_collision_segments,self.godot_owner,[NULL,],NULL)
  def  add_collision_triangles(self, triangles):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_collision_triangles,self.godot_owner,[NULL,],NULL)
  def  add_handles(self, handlesmaterialbillboardsecondary):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_handles,self.godot_owner,[NULL,],NULL)
  def  add_lines(self, linesmaterialbillboardmodulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_lines,self.godot_owner,[NULL,],NULL)
  def  add_mesh(self, meshbillboardskeletonmaterial):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_mesh,self.godot_owner,[NULL,],NULL)
  def  add_unscaled_billboard(self, materialdefault_scalemodulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_unscaled_billboard,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_clear,self.godot_owner,[NULL,],NULL)
  def  commit_handle(self, indexrestorecancel):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_commit_handle,self.godot_owner,[NULL,],NULL)
  def  get_handle_name(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_handle_name,self.godot_owner,[NULL,],&ret)
  def  get_handle_value(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_handle_value,self.godot_owner,[NULL,],&ret)
  def  get_plugin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorSpatialGizmoPlugin ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_plugin,self.godot_owner,[NULL,],&ret)
  def  get_spatial_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Spatial ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_spatial_node,self.godot_owner,[NULL,],&ret)
  def  is_handle_highlighted(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_is_handle_highlighted,self.godot_owner,[NULL,],&ret)
  def  redraw(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_redraw,self.godot_owner,[NULL,],NULL)
  def  set_handle(self, indexcamerapoint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_handle,self.godot_owner,[NULL,],NULL)
  def  set_hidden(self, hidden):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_hidden,self.godot_owner,[NULL,],NULL)
  def  set_spatial_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_spatial_node,self.godot_owner,[NULL,],NULL)
