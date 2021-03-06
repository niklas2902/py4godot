from classes.CanvasLayer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_parallaxbackground__camera_moved
cdef godot_method_bind *bind_parallaxbackground_get_limit_begin
cdef godot_method_bind *bind_parallaxbackground_get_limit_end
cdef godot_method_bind *bind_parallaxbackground_get_scroll_base_offset
cdef godot_method_bind *bind_parallaxbackground_get_scroll_base_scale
cdef godot_method_bind *bind_parallaxbackground_get_scroll_offset
cdef godot_method_bind *bind_parallaxbackground_is_ignore_camera_zoom
cdef godot_method_bind *bind_parallaxbackground_set_ignore_camera_zoom
cdef godot_method_bind *bind_parallaxbackground_set_limit_begin
cdef godot_method_bind *bind_parallaxbackground_set_limit_end
cdef godot_method_bind *bind_parallaxbackground_set_scroll_base_offset
cdef godot_method_bind *bind_parallaxbackground_set_scroll_base_scale
cdef godot_method_bind *bind_parallaxbackground_set_scroll_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_parallaxbackground__camera_moved = api_core.godot_method_bind_get_method('ParallaxBackground', '_camera_moved')
  bind_parallaxbackground_get_limit_begin = api_core.godot_method_bind_get_method('ParallaxBackground', 'get_limit_begin')
  bind_parallaxbackground_get_limit_end = api_core.godot_method_bind_get_method('ParallaxBackground', 'get_limit_end')
  bind_parallaxbackground_get_scroll_base_offset = api_core.godot_method_bind_get_method('ParallaxBackground', 'get_scroll_base_offset')
  bind_parallaxbackground_get_scroll_base_scale = api_core.godot_method_bind_get_method('ParallaxBackground', 'get_scroll_base_scale')
  bind_parallaxbackground_get_scroll_offset = api_core.godot_method_bind_get_method('ParallaxBackground', 'get_scroll_offset')
  bind_parallaxbackground_is_ignore_camera_zoom = api_core.godot_method_bind_get_method('ParallaxBackground', 'is_ignore_camera_zoom')
  bind_parallaxbackground_set_ignore_camera_zoom = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_ignore_camera_zoom')
  bind_parallaxbackground_set_limit_begin = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_limit_begin')
  bind_parallaxbackground_set_limit_end = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_limit_end')
  bind_parallaxbackground_set_scroll_base_offset = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_scroll_base_offset')
  bind_parallaxbackground_set_scroll_base_scale = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_scroll_base_scale')
  bind_parallaxbackground_set_scroll_offset = api_core.godot_method_bind_get_method('ParallaxBackground', 'set_scroll_offset')

############################Generated class###################################
cdef class ParallaxBackground(CanvasLayer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ParallaxBackground")())
##################################Generated Properties#########################################
  @property
  def scroll_base_offset(self): 
    return self.get_scroll_base_offset()
  @scroll_base_offset.setter 
  def scroll_base_offset(self,value): 
    self.set_scroll_base_offset(value)
  @property
  def scroll_base_scale(self): 
    return self.get_scroll_base_scale()
  @scroll_base_scale.setter 
  def scroll_base_scale(self,value): 
    self.set_scroll_base_scale(value)
  @property
  def scroll_ignore_camera_zoom(self): 
    return self.get_scroll_ignore_camera_zoom()
  @scroll_ignore_camera_zoom.setter 
  def scroll_ignore_camera_zoom(self,value): 
    self.set_scroll_ignore_camera_zoom(value)
  @property
  def scroll_limit_begin(self): 
    return self.get_scroll_limit_begin()
  @scroll_limit_begin.setter 
  def scroll_limit_begin(self,value): 
    self.set_scroll_limit_begin(value)
  @property
  def scroll_limit_end(self): 
    return self.get_scroll_limit_end()
  @scroll_limit_end.setter 
  def scroll_limit_end(self,value): 
    self.set_scroll_limit_end(value)
  @property
  def scroll_offset(self): 
    return self.get_scroll_offset()
  @scroll_offset.setter 
  def scroll_offset(self,value): 
    self.set_scroll_offset(value)

##################################Generated Methods#########################################
  def  _camera_moved(self, arg0arg1):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground__camera_moved,self.godot_owner,[NULL,],NULL)
  def  get_limit_begin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_limit_begin,self.godot_owner,[NULL,],&ret)
  def  get_limit_end(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_limit_end,self.godot_owner,[NULL,],&ret)
  def  get_scroll_base_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_base_offset,self.godot_owner,[NULL,],&ret)
  def  get_scroll_base_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_base_scale,self.godot_owner,[NULL,],&ret)
  def  get_scroll_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_offset,self.godot_owner,[NULL,],&ret)
  def  is_ignore_camera_zoom(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_is_ignore_camera_zoom,self.godot_owner,[NULL,],&ret)
  def  set_ignore_camera_zoom(self, ignore):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_ignore_camera_zoom,self.godot_owner,[NULL,],NULL)
  def  set_limit_begin(self, ofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_limit_begin,self.godot_owner,[NULL,],NULL)
  def  set_limit_end(self, ofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_limit_end,self.godot_owner,[NULL,],NULL)
  def  set_scroll_base_offset(self, ofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_base_offset,self.godot_owner,[NULL,],NULL)
  def  set_scroll_base_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_base_scale,self.godot_owner,[NULL,],NULL)
  def  set_scroll_offset(self, ofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_offset,self.godot_owner,[NULL,],NULL)
