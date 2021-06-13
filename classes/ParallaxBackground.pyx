
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
cimport classes.CanvasLayer 

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
cdef class ParallaxBackground(classes.CanvasLayer.CanvasLayer):
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
  def  _camera_moved(self,  Transform2D arg0,  Vector2 arg1):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &arg0._native
    args[1] = &arg1._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground__camera_moved,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_limit_begin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_limit_begin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_limit_end(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_limit_end,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_scroll_base_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_base_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_scroll_base_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_base_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_scroll_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_get_scroll_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  is_ignore_camera_zoom(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_is_ignore_camera_zoom,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_ignore_camera_zoom(self,  bool ignore):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ignore
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_ignore_camera_zoom,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_limit_begin(self,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_limit_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_limit_end(self,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_limit_end,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scroll_base_offset(self,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_base_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scroll_base_scale(self,  Vector2 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_base_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_scroll_offset(self,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_parallaxbackground_set_scroll_offset,self.godot_owner,args,NULL)
    hello('hallo2')
