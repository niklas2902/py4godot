from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spatial__update_gizmo
cdef godot_method_bind *bind_spatial_force_update_transform
cdef godot_method_bind *bind_spatial_get_gizmo
cdef godot_method_bind *bind_spatial_get_global_transform
cdef godot_method_bind *bind_spatial_get_parent_spatial
cdef godot_method_bind *bind_spatial_get_rotation
cdef godot_method_bind *bind_spatial_get_rotation_degrees
cdef godot_method_bind *bind_spatial_get_scale
cdef godot_method_bind *bind_spatial_get_transform
cdef godot_method_bind *bind_spatial_get_translation
cdef godot_method_bind *bind_spatial_get_world
cdef godot_method_bind *bind_spatial_global_rotate
cdef godot_method_bind *bind_spatial_global_scale
cdef godot_method_bind *bind_spatial_global_translate
cdef godot_method_bind *bind_spatial_hide
cdef godot_method_bind *bind_spatial_is_local_transform_notification_enabled
cdef godot_method_bind *bind_spatial_is_scale_disabled
cdef godot_method_bind *bind_spatial_is_set_as_toplevel
cdef godot_method_bind *bind_spatial_is_transform_notification_enabled
cdef godot_method_bind *bind_spatial_is_visible
cdef godot_method_bind *bind_spatial_is_visible_in_tree
cdef godot_method_bind *bind_spatial_look_at
cdef godot_method_bind *bind_spatial_look_at_from_position
cdef godot_method_bind *bind_spatial_orthonormalize
cdef godot_method_bind *bind_spatial_rotate
cdef godot_method_bind *bind_spatial_rotate_object_local
cdef godot_method_bind *bind_spatial_rotate_x
cdef godot_method_bind *bind_spatial_rotate_y
cdef godot_method_bind *bind_spatial_rotate_z
cdef godot_method_bind *bind_spatial_scale_object_local
cdef godot_method_bind *bind_spatial_set_as_toplevel
cdef godot_method_bind *bind_spatial_set_disable_scale
cdef godot_method_bind *bind_spatial_set_gizmo
cdef godot_method_bind *bind_spatial_set_global_transform
cdef godot_method_bind *bind_spatial_set_identity
cdef godot_method_bind *bind_spatial_set_ignore_transform_notification
cdef godot_method_bind *bind_spatial_set_notify_local_transform
cdef godot_method_bind *bind_spatial_set_notify_transform
cdef godot_method_bind *bind_spatial_set_rotation
cdef godot_method_bind *bind_spatial_set_rotation_degrees
cdef godot_method_bind *bind_spatial_set_scale
cdef godot_method_bind *bind_spatial_set_transform
cdef godot_method_bind *bind_spatial_set_translation
cdef godot_method_bind *bind_spatial_set_visible
cdef godot_method_bind *bind_spatial_show
cdef godot_method_bind *bind_spatial_to_global
cdef godot_method_bind *bind_spatial_to_local
cdef godot_method_bind *bind_spatial_translate
cdef godot_method_bind *bind_spatial_translate_object_local
cdef godot_method_bind *bind_spatial_update_gizmo
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spatial__update_gizmo = api_core.godot_method_bind_get_method('Spatial', '_update_gizmo')
  bind_spatial_force_update_transform = api_core.godot_method_bind_get_method('Spatial', 'force_update_transform')
  bind_spatial_get_gizmo = api_core.godot_method_bind_get_method('Spatial', 'get_gizmo')
  bind_spatial_get_global_transform = api_core.godot_method_bind_get_method('Spatial', 'get_global_transform')
  bind_spatial_get_parent_spatial = api_core.godot_method_bind_get_method('Spatial', 'get_parent_spatial')
  bind_spatial_get_rotation = api_core.godot_method_bind_get_method('Spatial', 'get_rotation')
  bind_spatial_get_rotation_degrees = api_core.godot_method_bind_get_method('Spatial', 'get_rotation_degrees')
  bind_spatial_get_scale = api_core.godot_method_bind_get_method('Spatial', 'get_scale')
  bind_spatial_get_transform = api_core.godot_method_bind_get_method('Spatial', 'get_transform')
  bind_spatial_get_translation = api_core.godot_method_bind_get_method('Spatial', 'get_translation')
  bind_spatial_get_world = api_core.godot_method_bind_get_method('Spatial', 'get_world')
  bind_spatial_global_rotate = api_core.godot_method_bind_get_method('Spatial', 'global_rotate')
  bind_spatial_global_scale = api_core.godot_method_bind_get_method('Spatial', 'global_scale')
  bind_spatial_global_translate = api_core.godot_method_bind_get_method('Spatial', 'global_translate')
  bind_spatial_hide = api_core.godot_method_bind_get_method('Spatial', 'hide')
  bind_spatial_is_local_transform_notification_enabled = api_core.godot_method_bind_get_method('Spatial', 'is_local_transform_notification_enabled')
  bind_spatial_is_scale_disabled = api_core.godot_method_bind_get_method('Spatial', 'is_scale_disabled')
  bind_spatial_is_set_as_toplevel = api_core.godot_method_bind_get_method('Spatial', 'is_set_as_toplevel')
  bind_spatial_is_transform_notification_enabled = api_core.godot_method_bind_get_method('Spatial', 'is_transform_notification_enabled')
  bind_spatial_is_visible = api_core.godot_method_bind_get_method('Spatial', 'is_visible')
  bind_spatial_is_visible_in_tree = api_core.godot_method_bind_get_method('Spatial', 'is_visible_in_tree')
  bind_spatial_look_at = api_core.godot_method_bind_get_method('Spatial', 'look_at')
  bind_spatial_look_at_from_position = api_core.godot_method_bind_get_method('Spatial', 'look_at_from_position')
  bind_spatial_orthonormalize = api_core.godot_method_bind_get_method('Spatial', 'orthonormalize')
  bind_spatial_rotate = api_core.godot_method_bind_get_method('Spatial', 'rotate')
  bind_spatial_rotate_object_local = api_core.godot_method_bind_get_method('Spatial', 'rotate_object_local')
  bind_spatial_rotate_x = api_core.godot_method_bind_get_method('Spatial', 'rotate_x')
  bind_spatial_rotate_y = api_core.godot_method_bind_get_method('Spatial', 'rotate_y')
  bind_spatial_rotate_z = api_core.godot_method_bind_get_method('Spatial', 'rotate_z')
  bind_spatial_scale_object_local = api_core.godot_method_bind_get_method('Spatial', 'scale_object_local')
  bind_spatial_set_as_toplevel = api_core.godot_method_bind_get_method('Spatial', 'set_as_toplevel')
  bind_spatial_set_disable_scale = api_core.godot_method_bind_get_method('Spatial', 'set_disable_scale')
  bind_spatial_set_gizmo = api_core.godot_method_bind_get_method('Spatial', 'set_gizmo')
  bind_spatial_set_global_transform = api_core.godot_method_bind_get_method('Spatial', 'set_global_transform')
  bind_spatial_set_identity = api_core.godot_method_bind_get_method('Spatial', 'set_identity')
  bind_spatial_set_ignore_transform_notification = api_core.godot_method_bind_get_method('Spatial', 'set_ignore_transform_notification')
  bind_spatial_set_notify_local_transform = api_core.godot_method_bind_get_method('Spatial', 'set_notify_local_transform')
  bind_spatial_set_notify_transform = api_core.godot_method_bind_get_method('Spatial', 'set_notify_transform')
  bind_spatial_set_rotation = api_core.godot_method_bind_get_method('Spatial', 'set_rotation')
  bind_spatial_set_rotation_degrees = api_core.godot_method_bind_get_method('Spatial', 'set_rotation_degrees')
  bind_spatial_set_scale = api_core.godot_method_bind_get_method('Spatial', 'set_scale')
  bind_spatial_set_transform = api_core.godot_method_bind_get_method('Spatial', 'set_transform')
  bind_spatial_set_translation = api_core.godot_method_bind_get_method('Spatial', 'set_translation')
  bind_spatial_set_visible = api_core.godot_method_bind_get_method('Spatial', 'set_visible')
  bind_spatial_show = api_core.godot_method_bind_get_method('Spatial', 'show')
  bind_spatial_to_global = api_core.godot_method_bind_get_method('Spatial', 'to_global')
  bind_spatial_to_local = api_core.godot_method_bind_get_method('Spatial', 'to_local')
  bind_spatial_translate = api_core.godot_method_bind_get_method('Spatial', 'translate')
  bind_spatial_translate_object_local = api_core.godot_method_bind_get_method('Spatial', 'translate_object_local')
  bind_spatial_update_gizmo = api_core.godot_method_bind_get_method('Spatial', 'update_gizmo')

############################Generated class###################################
cdef class Spatial(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Spatial")())
##################################Generated Properties#########################################
  @property
  def gizmo(self): 
    return self.get_gizmo()
  @gizmo.setter 
  def gizmo(self,value): 
    self.set_gizmo(value)
  @property
  def global_transform(self): 
    return self.get_global_transform()
  @global_transform.setter 
  def global_transform(self,value): 
    self.set_global_transform(value)
  @property
  def rotation(self): 
    return self.get_rotation()
  @rotation.setter 
  def rotation(self,value): 
    self.set_rotation(value)
  @property
  def rotation_degrees(self): 
    return self.get_rotation_degrees()
  @rotation_degrees.setter 
  def rotation_degrees(self,value): 
    self.set_rotation_degrees(value)
  @property
  def scale(self): 
    return self.get_scale()
  @scale.setter 
  def scale(self,value): 
    self.set_scale(value)
  @property
  def transform(self): 
    return self.get_transform()
  @transform.setter 
  def transform(self,value): 
    self.set_transform(value)
  @property
  def translation(self): 
    return self.get_translation()
  @translation.setter 
  def translation(self,value): 
    self.set_translation(value)
  @property
  def visible(self): 
    return self.get_visible()
  @visible.setter 
  def visible(self,value): 
    self.set_visible(value)

##################################Generated Methods#########################################
  def  _update_gizmo(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial__update_gizmo,self.godot_owner,[NULL,],NULL)
  def  force_update_transform(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_force_update_transform,self.godot_owner,[NULL,],NULL)
  def  get_gizmo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialGizmo ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_gizmo,self.godot_owner,[NULL,],&ret)
  def  get_global_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_global_transform,self.godot_owner,[NULL,],&ret)
  def  get_parent_spatial(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Spatial ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_parent_spatial,self.godot_owner,[NULL,],&ret)
  def  get_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_rotation,self.godot_owner,[NULL,],&ret)
  def  get_rotation_degrees(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_rotation_degrees,self.godot_owner,[NULL,],&ret)
  def  get_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_scale,self.godot_owner,[NULL,],&ret)
  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_transform,self.godot_owner,[NULL,],&ret)
  def  get_translation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_translation,self.godot_owner,[NULL,],&ret)
  def  get_world(self):
    cdef godot_object *_owner = self.godot_owner
    cdef World ret
    api_core.godot_method_bind_ptrcall(bind_spatial_get_world,self.godot_owner,[NULL,],&ret)
  def  global_rotate(self, axisangle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_global_rotate,self.godot_owner,[NULL,],NULL)
  def  global_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_global_scale,self.godot_owner,[NULL,],NULL)
  def  global_translate(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_global_translate,self.godot_owner,[NULL,],NULL)
  def  hide(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_hide,self.godot_owner,[NULL,],NULL)
  def  is_local_transform_notification_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_local_transform_notification_enabled,self.godot_owner,[NULL,],&ret)
  def  is_scale_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_scale_disabled,self.godot_owner,[NULL,],&ret)
  def  is_set_as_toplevel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_set_as_toplevel,self.godot_owner,[NULL,],&ret)
  def  is_transform_notification_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_transform_notification_enabled,self.godot_owner,[NULL,],&ret)
  def  is_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_visible,self.godot_owner,[NULL,],&ret)
  def  is_visible_in_tree(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatial_is_visible_in_tree,self.godot_owner,[NULL,],&ret)
  def  look_at(self, targetup):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_look_at,self.godot_owner,[NULL,],NULL)
  def  look_at_from_position(self, positiontargetup):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_look_at_from_position,self.godot_owner,[NULL,],NULL)
  def  orthonormalize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_orthonormalize,self.godot_owner,[NULL,],NULL)
  def  rotate(self, axisangle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_rotate,self.godot_owner,[NULL,],NULL)
  def  rotate_object_local(self, axisangle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_rotate_object_local,self.godot_owner,[NULL,],NULL)
  def  rotate_x(self, angle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_rotate_x,self.godot_owner,[NULL,],NULL)
  def  rotate_y(self, angle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_rotate_y,self.godot_owner,[NULL,],NULL)
  def  rotate_z(self, angle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_rotate_z,self.godot_owner,[NULL,],NULL)
  def  scale_object_local(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_scale_object_local,self.godot_owner,[NULL,],NULL)
  def  set_as_toplevel(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_as_toplevel,self.godot_owner,[NULL,],NULL)
  def  set_disable_scale(self, disable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_disable_scale,self.godot_owner,[NULL,],NULL)
  def  set_gizmo(self, gizmo):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_gizmo,self.godot_owner,[NULL,],NULL)
  def  set_global_transform(self, global_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_global_transform,self.godot_owner,[NULL,],NULL)
  def  set_identity(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_identity,self.godot_owner,[NULL,],NULL)
  def  set_ignore_transform_notification(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_ignore_transform_notification,self.godot_owner,[NULL,],NULL)
  def  set_notify_local_transform(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_notify_local_transform,self.godot_owner,[NULL,],NULL)
  def  set_notify_transform(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_notify_transform,self.godot_owner,[NULL,],NULL)
  def  set_rotation(self, euler):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_rotation,self.godot_owner,[NULL,],NULL)
  def  set_rotation_degrees(self, euler_degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_rotation_degrees,self.godot_owner,[NULL,],NULL)
  def  set_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_scale,self.godot_owner,[NULL,],NULL)
  def  set_transform(self, local):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_transform,self.godot_owner,[NULL,],NULL)
  def  set_translation(self, translation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_translation,self.godot_owner,[NULL,],NULL)
  def  set_visible(self, visible):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_set_visible,self.godot_owner,[NULL,],NULL)
  def  show(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_show,self.godot_owner,[NULL,],NULL)
  def  to_global(self, local_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_to_global,self.godot_owner,[NULL,],&ret)
  def  to_local(self, global_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatial_to_local,self.godot_owner,[NULL,],&ret)
  def  translate(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_translate,self.godot_owner,[NULL,],NULL)
  def  translate_object_local(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_translate_object_local,self.godot_owner,[NULL,],NULL)
  def  update_gizmo(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatial_update_gizmo,self.godot_owner,[NULL,],NULL)
