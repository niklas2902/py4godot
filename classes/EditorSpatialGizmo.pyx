
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
cimport classes.TriangleMesh
cimport classes.Material
cimport classes.Material
cimport classes.ArrayMesh
cimport classes.SkinReference
cimport classes.Material
cimport classes.Material
cimport classes.Camera
cimport classes.Node
cimport classes.SpatialGizmo 

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
cdef class EditorSpatialGizmo(classes.SpatialGizmo.SpatialGizmo):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSpatialGizmo")())
##################################Generated Methods#########################################
  def  add_collision_segments(self,  PoolVector3Array segments):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &segments._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_collision_segments,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_collision_triangles(self,  classes.TriangleMesh.TriangleMesh triangles):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = triangles.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_collision_triangles,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_handles(self,  PoolVector3Array handles,  classes.Material.Material material,  bool billboard,  bool secondary):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &handles._native
    args[1] = material.godot_owner
    args[2] = &billboard
    args[3] = &secondary
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_handles,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_lines(self,  PoolVector3Array lines,  classes.Material.Material material,  bool billboard,  Color modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &lines._native
    args[1] = material.godot_owner
    args[2] = &billboard
    args[3] = &modulate._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_lines,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_mesh(self,  classes.ArrayMesh.ArrayMesh mesh,  bool billboard,  classes.SkinReference.SkinReference skeleton,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = mesh.godot_owner
    args[1] = &billboard
    args[2] = skeleton.godot_owner
    args[3] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_unscaled_billboard(self,  classes.Material.Material material,  float default_scale,  Color modulate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = material.godot_owner
    args[1] = &default_scale
    args[2] = &modulate._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_add_unscaled_billboard,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  commit_handle(self,  int index,  Variant restore,  bool cancel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &index
    args[1] = &restore._native
    args[2] = &cancel
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_commit_handle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_handle_name(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_handle_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_handle_value(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_handle_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_plugin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_plugin,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_spatial_node(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_get_spatial_node,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_handle_highlighted(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_is_handle_highlighted,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  redraw(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_redraw,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_handle(self,  int index,  classes.Camera.Camera camera,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &index
    args[1] = camera.godot_owner
    args[2] = &point._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_handle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hidden(self,  bool hidden):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hidden
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_hidden,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_spatial_node(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmo_set_spatial_node,self.godot_owner,args,NULL)
    hello('hallo2')
