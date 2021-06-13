
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
cimport classes.Object
cimport classes.Node
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_camera2d__make_current
cdef godot_method_bind *bind_camera2d__set_current
cdef godot_method_bind *bind_camera2d__set_old_smoothing
cdef godot_method_bind *bind_camera2d__update_scroll
cdef godot_method_bind *bind_camera2d_align
cdef godot_method_bind *bind_camera2d_clear_current
cdef godot_method_bind *bind_camera2d_force_update_scroll
cdef godot_method_bind *bind_camera2d_get_anchor_mode
cdef godot_method_bind *bind_camera2d_get_camera_position
cdef godot_method_bind *bind_camera2d_get_camera_screen_center
cdef godot_method_bind *bind_camera2d_get_custom_viewport
cdef godot_method_bind *bind_camera2d_get_drag_margin
cdef godot_method_bind *bind_camera2d_get_follow_smoothing
cdef godot_method_bind *bind_camera2d_get_h_offset
cdef godot_method_bind *bind_camera2d_get_limit
cdef godot_method_bind *bind_camera2d_get_offset
cdef godot_method_bind *bind_camera2d_get_process_mode
cdef godot_method_bind *bind_camera2d_get_v_offset
cdef godot_method_bind *bind_camera2d_get_zoom
cdef godot_method_bind *bind_camera2d_is_current
cdef godot_method_bind *bind_camera2d_is_follow_smoothing_enabled
cdef godot_method_bind *bind_camera2d_is_h_drag_enabled
cdef godot_method_bind *bind_camera2d_is_limit_drawing_enabled
cdef godot_method_bind *bind_camera2d_is_limit_smoothing_enabled
cdef godot_method_bind *bind_camera2d_is_margin_drawing_enabled
cdef godot_method_bind *bind_camera2d_is_rotating
cdef godot_method_bind *bind_camera2d_is_screen_drawing_enabled
cdef godot_method_bind *bind_camera2d_is_v_drag_enabled
cdef godot_method_bind *bind_camera2d_make_current
cdef godot_method_bind *bind_camera2d_reset_smoothing
cdef godot_method_bind *bind_camera2d_set_anchor_mode
cdef godot_method_bind *bind_camera2d_set_custom_viewport
cdef godot_method_bind *bind_camera2d_set_drag_margin
cdef godot_method_bind *bind_camera2d_set_enable_follow_smoothing
cdef godot_method_bind *bind_camera2d_set_follow_smoothing
cdef godot_method_bind *bind_camera2d_set_h_drag_enabled
cdef godot_method_bind *bind_camera2d_set_h_offset
cdef godot_method_bind *bind_camera2d_set_limit
cdef godot_method_bind *bind_camera2d_set_limit_drawing_enabled
cdef godot_method_bind *bind_camera2d_set_limit_smoothing_enabled
cdef godot_method_bind *bind_camera2d_set_margin_drawing_enabled
cdef godot_method_bind *bind_camera2d_set_offset
cdef godot_method_bind *bind_camera2d_set_process_mode
cdef godot_method_bind *bind_camera2d_set_rotating
cdef godot_method_bind *bind_camera2d_set_screen_drawing_enabled
cdef godot_method_bind *bind_camera2d_set_v_drag_enabled
cdef godot_method_bind *bind_camera2d_set_v_offset
cdef godot_method_bind *bind_camera2d_set_zoom
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_camera2d__make_current = api_core.godot_method_bind_get_method('Camera2D', '_make_current')
  bind_camera2d__set_current = api_core.godot_method_bind_get_method('Camera2D', '_set_current')
  bind_camera2d__set_old_smoothing = api_core.godot_method_bind_get_method('Camera2D', '_set_old_smoothing')
  bind_camera2d__update_scroll = api_core.godot_method_bind_get_method('Camera2D', '_update_scroll')
  bind_camera2d_align = api_core.godot_method_bind_get_method('Camera2D', 'align')
  bind_camera2d_clear_current = api_core.godot_method_bind_get_method('Camera2D', 'clear_current')
  bind_camera2d_force_update_scroll = api_core.godot_method_bind_get_method('Camera2D', 'force_update_scroll')
  bind_camera2d_get_anchor_mode = api_core.godot_method_bind_get_method('Camera2D', 'get_anchor_mode')
  bind_camera2d_get_camera_position = api_core.godot_method_bind_get_method('Camera2D', 'get_camera_position')
  bind_camera2d_get_camera_screen_center = api_core.godot_method_bind_get_method('Camera2D', 'get_camera_screen_center')
  bind_camera2d_get_custom_viewport = api_core.godot_method_bind_get_method('Camera2D', 'get_custom_viewport')
  bind_camera2d_get_drag_margin = api_core.godot_method_bind_get_method('Camera2D', 'get_drag_margin')
  bind_camera2d_get_follow_smoothing = api_core.godot_method_bind_get_method('Camera2D', 'get_follow_smoothing')
  bind_camera2d_get_h_offset = api_core.godot_method_bind_get_method('Camera2D', 'get_h_offset')
  bind_camera2d_get_limit = api_core.godot_method_bind_get_method('Camera2D', 'get_limit')
  bind_camera2d_get_offset = api_core.godot_method_bind_get_method('Camera2D', 'get_offset')
  bind_camera2d_get_process_mode = api_core.godot_method_bind_get_method('Camera2D', 'get_process_mode')
  bind_camera2d_get_v_offset = api_core.godot_method_bind_get_method('Camera2D', 'get_v_offset')
  bind_camera2d_get_zoom = api_core.godot_method_bind_get_method('Camera2D', 'get_zoom')
  bind_camera2d_is_current = api_core.godot_method_bind_get_method('Camera2D', 'is_current')
  bind_camera2d_is_follow_smoothing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_follow_smoothing_enabled')
  bind_camera2d_is_h_drag_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_h_drag_enabled')
  bind_camera2d_is_limit_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_limit_drawing_enabled')
  bind_camera2d_is_limit_smoothing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_limit_smoothing_enabled')
  bind_camera2d_is_margin_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_margin_drawing_enabled')
  bind_camera2d_is_rotating = api_core.godot_method_bind_get_method('Camera2D', 'is_rotating')
  bind_camera2d_is_screen_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_screen_drawing_enabled')
  bind_camera2d_is_v_drag_enabled = api_core.godot_method_bind_get_method('Camera2D', 'is_v_drag_enabled')
  bind_camera2d_make_current = api_core.godot_method_bind_get_method('Camera2D', 'make_current')
  bind_camera2d_reset_smoothing = api_core.godot_method_bind_get_method('Camera2D', 'reset_smoothing')
  bind_camera2d_set_anchor_mode = api_core.godot_method_bind_get_method('Camera2D', 'set_anchor_mode')
  bind_camera2d_set_custom_viewport = api_core.godot_method_bind_get_method('Camera2D', 'set_custom_viewport')
  bind_camera2d_set_drag_margin = api_core.godot_method_bind_get_method('Camera2D', 'set_drag_margin')
  bind_camera2d_set_enable_follow_smoothing = api_core.godot_method_bind_get_method('Camera2D', 'set_enable_follow_smoothing')
  bind_camera2d_set_follow_smoothing = api_core.godot_method_bind_get_method('Camera2D', 'set_follow_smoothing')
  bind_camera2d_set_h_drag_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_h_drag_enabled')
  bind_camera2d_set_h_offset = api_core.godot_method_bind_get_method('Camera2D', 'set_h_offset')
  bind_camera2d_set_limit = api_core.godot_method_bind_get_method('Camera2D', 'set_limit')
  bind_camera2d_set_limit_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_limit_drawing_enabled')
  bind_camera2d_set_limit_smoothing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_limit_smoothing_enabled')
  bind_camera2d_set_margin_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_margin_drawing_enabled')
  bind_camera2d_set_offset = api_core.godot_method_bind_get_method('Camera2D', 'set_offset')
  bind_camera2d_set_process_mode = api_core.godot_method_bind_get_method('Camera2D', 'set_process_mode')
  bind_camera2d_set_rotating = api_core.godot_method_bind_get_method('Camera2D', 'set_rotating')
  bind_camera2d_set_screen_drawing_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_screen_drawing_enabled')
  bind_camera2d_set_v_drag_enabled = api_core.godot_method_bind_get_method('Camera2D', 'set_v_drag_enabled')
  bind_camera2d_set_v_offset = api_core.godot_method_bind_get_method('Camera2D', 'set_v_offset')
  bind_camera2d_set_zoom = api_core.godot_method_bind_get_method('Camera2D', 'set_zoom')

############################Generated class###################################
cdef class Camera2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Camera2D")())
##################################Generated Properties#########################################
  @property
  def anchor_mode(self): 
    return self.get_anchor_mode()
  @anchor_mode.setter 
  def anchor_mode(self,value): 
    self.set_anchor_mode(value)
  @property
  def current(self): 
    return self.get_current()
  @current.setter 
  def current(self,value): 
    self.set_current(value)
  @property
  def custom_viewport(self): 
    return self.get_custom_viewport()
  @custom_viewport.setter 
  def custom_viewport(self,value): 
    self.set_custom_viewport(value)
  @property
  def drag_margin_bottom(self): 
    return self.get_drag_margin_bottom()
  @drag_margin_bottom.setter 
  def drag_margin_bottom(self,value): 
    self.set_drag_margin_bottom(value)
  @property
  def drag_margin_h_enabled(self): 
    return self.get_drag_margin_h_enabled()
  @drag_margin_h_enabled.setter 
  def drag_margin_h_enabled(self,value): 
    self.set_drag_margin_h_enabled(value)
  @property
  def drag_margin_left(self): 
    return self.get_drag_margin_left()
  @drag_margin_left.setter 
  def drag_margin_left(self,value): 
    self.set_drag_margin_left(value)
  @property
  def drag_margin_right(self): 
    return self.get_drag_margin_right()
  @drag_margin_right.setter 
  def drag_margin_right(self,value): 
    self.set_drag_margin_right(value)
  @property
  def drag_margin_top(self): 
    return self.get_drag_margin_top()
  @drag_margin_top.setter 
  def drag_margin_top(self,value): 
    self.set_drag_margin_top(value)
  @property
  def drag_margin_v_enabled(self): 
    return self.get_drag_margin_v_enabled()
  @drag_margin_v_enabled.setter 
  def drag_margin_v_enabled(self,value): 
    self.set_drag_margin_v_enabled(value)
  @property
  def editor_draw_drag_margin(self): 
    return self.get_editor_draw_drag_margin()
  @editor_draw_drag_margin.setter 
  def editor_draw_drag_margin(self,value): 
    self.set_editor_draw_drag_margin(value)
  @property
  def editor_draw_limits(self): 
    return self.get_editor_draw_limits()
  @editor_draw_limits.setter 
  def editor_draw_limits(self,value): 
    self.set_editor_draw_limits(value)
  @property
  def editor_draw_screen(self): 
    return self.get_editor_draw_screen()
  @editor_draw_screen.setter 
  def editor_draw_screen(self,value): 
    self.set_editor_draw_screen(value)
  @property
  def limit_bottom(self): 
    return self.get_limit_bottom()
  @limit_bottom.setter 
  def limit_bottom(self,value): 
    self.set_limit_bottom(value)
  @property
  def limit_left(self): 
    return self.get_limit_left()
  @limit_left.setter 
  def limit_left(self,value): 
    self.set_limit_left(value)
  @property
  def limit_right(self): 
    return self.get_limit_right()
  @limit_right.setter 
  def limit_right(self,value): 
    self.set_limit_right(value)
  @property
  def limit_smoothed(self): 
    return self.get_limit_smoothed()
  @limit_smoothed.setter 
  def limit_smoothed(self,value): 
    self.set_limit_smoothed(value)
  @property
  def limit_top(self): 
    return self.get_limit_top()
  @limit_top.setter 
  def limit_top(self,value): 
    self.set_limit_top(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def offset_h(self): 
    return self.get_offset_h()
  @offset_h.setter 
  def offset_h(self,value): 
    self.set_offset_h(value)
  @property
  def offset_v(self): 
    return self.get_offset_v()
  @offset_v.setter 
  def offset_v(self,value): 
    self.set_offset_v(value)
  @property
  def process_mode(self): 
    return self.get_process_mode()
  @process_mode.setter 
  def process_mode(self,value): 
    self.set_process_mode(value)
  @property
  def rotating(self): 
    return self.get_rotating()
  @rotating.setter 
  def rotating(self,value): 
    self.set_rotating(value)
  @property
  def smoothing_enabled(self): 
    return self.get_smoothing_enabled()
  @smoothing_enabled.setter 
  def smoothing_enabled(self,value): 
    self.set_smoothing_enabled(value)
  @property
  def smoothing_speed(self): 
    return self.get_smoothing_speed()
  @smoothing_speed.setter 
  def smoothing_speed(self,value): 
    self.set_smoothing_speed(value)
  @property
  def zoom(self): 
    return self.get_zoom()
  @zoom.setter 
  def zoom(self,value): 
    self.set_zoom(value)

##################################Generated Methods#########################################
  def  _make_current(self,  classes.Object.Object arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camera2d__make_current,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_current(self,  bool current):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &current
    api_core.godot_method_bind_ptrcall(bind_camera2d__set_current,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_old_smoothing(self,  float follow_smoothing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &follow_smoothing
    api_core.godot_method_bind_ptrcall(bind_camera2d__set_old_smoothing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d__update_scroll,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  align(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d_align,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_current(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d_clear_current,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  force_update_scroll(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d_force_update_scroll,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_anchor_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Camera2D_AnchorMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_anchor_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_camera_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_camera_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_camera_screen_center(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_camera_screen_center,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_custom_viewport(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_custom_viewport,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_drag_margin(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_camera2d_get_drag_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_follow_smoothing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_follow_smoothing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_h_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_h_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_limit(self,  int margin):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_camera2d_get_limit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Camera2D_Camera2DProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_v_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_v_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_zoom(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_get_zoom,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  is_current(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_current,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_follow_smoothing_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_follow_smoothing_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_h_drag_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_h_drag_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_limit_drawing_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_limit_drawing_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_limit_smoothing_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_limit_smoothing_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_margin_drawing_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_margin_drawing_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_rotating(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_rotating,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_screen_drawing_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_screen_drawing_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_v_drag_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_camera2d_is_v_drag_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  make_current(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d_make_current,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  reset_smoothing(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_camera2d_reset_smoothing,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_anchor_mode(self,  int anchor_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anchor_mode
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_anchor_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_viewport(self,  classes.Node.Node viewport):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = viewport.godot_owner
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_custom_viewport,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_drag_margin(self,  int margin,  float drag_margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &drag_margin
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_drag_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enable_follow_smoothing(self,  bool follow_smoothing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &follow_smoothing
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_enable_follow_smoothing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_follow_smoothing(self,  float follow_smoothing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &follow_smoothing
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_follow_smoothing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_drag_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_h_drag_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_h_offset(self,  float ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_h_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_limit(self,  int margin,  int limit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &margin
    args[1] = &limit
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_limit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_limit_drawing_enabled(self,  bool limit_drawing_enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &limit_drawing_enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_limit_drawing_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_limit_smoothing_enabled(self,  bool limit_smoothing_enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &limit_smoothing_enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_limit_smoothing_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_margin_drawing_enabled(self,  bool margin_drawing_enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin_drawing_enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_margin_drawing_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rotating(self,  bool rotating):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rotating
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_rotating,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_screen_drawing_enabled(self,  bool screen_drawing_enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &screen_drawing_enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_screen_drawing_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_drag_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_v_drag_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_v_offset(self,  float ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_v_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_zoom(self,  Vector2 zoom):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &zoom._native
    api_core.godot_method_bind_ptrcall(bind_camera2d_set_zoom,self.godot_owner,args,NULL)
    hello('hallo2')
