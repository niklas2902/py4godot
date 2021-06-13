
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.SpatialMaterial
cimport classes.EditorSpatialGizmo
cimport classes.Spatial
cimport classes.Texture
cimport classes.EditorSpatialGizmo
cimport classes.EditorSpatialGizmo
cimport classes.EditorSpatialGizmo
cimport classes.Spatial
cimport classes.EditorSpatialGizmo
cimport classes.EditorSpatialGizmo
cimport classes.EditorSpatialGizmo
cimport classes.Camera
cimport classes.Resource 

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
cdef class EditorSpatialGizmoPlugin(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSpatialGizmoPlugin")())
##################################Generated Methods#########################################
  def  add_material(self,  String name,  classes.SpatialMaterial.SpatialMaterial material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_add_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  can_be_hidden(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_can_be_hidden,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  commit_handle(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo,  int index,  Variant restore,  bool cancel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = gizmo.godot_owner
    args[1] = &index
    args[2] = &restore._native
    args[3] = &cancel
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_commit_handle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_gizmo(self,  classes.Spatial.Spatial spatial):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = spatial.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_gizmo,self.godot_owner,args,&ret)
    hello('hallo2')
  def  create_handle_material(self,  String name,  bool billboard):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &billboard
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_handle_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_icon_material(self,  String name,  classes.Texture.Texture texture,  bool on_top,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &name._native
    args[1] = texture.godot_owner
    args[2] = &on_top
    args[3] = &color._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_icon_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_material(self,  String name,  Color color,  bool billboard,  bool on_top,  bool use_vertex_color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &name._native
    args[1] = &color._native
    args[2] = &billboard
    args[3] = &on_top
    args[4] = &use_vertex_color
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_create_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_handle_name(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = gizmo.godot_owner
    args[1] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_handle_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_handle_value(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = gizmo.godot_owner
    args[1] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_handle_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_material(self,  String name,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = gizmo.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_material,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_get_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_gizmo(self,  classes.Spatial.Spatial spatial):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = spatial.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_has_gizmo,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_handle_highlighted(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = gizmo.godot_owner
    args[1] = &index
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_is_handle_highlighted,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_selectable_when_hidden(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_is_selectable_when_hidden,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  redraw(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = gizmo.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_redraw,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_handle(self,  classes.EditorSpatialGizmo.EditorSpatialGizmo gizmo,  int index,  classes.Camera.Camera camera,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = gizmo.godot_owner
    args[1] = &index
    args[2] = camera.godot_owner
    args[3] = &point._native
    api_core.godot_method_bind_ptrcall(bind_editorspatialgizmoplugin_set_handle,self.godot_owner,args,NULL)
    hello('hallo2')
