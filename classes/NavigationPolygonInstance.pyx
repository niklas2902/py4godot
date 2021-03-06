from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigationpolygoninstance__navpoly_changed
cdef godot_method_bind *bind_navigationpolygoninstance_get_navigation_polygon
cdef godot_method_bind *bind_navigationpolygoninstance_is_enabled
cdef godot_method_bind *bind_navigationpolygoninstance_set_enabled
cdef godot_method_bind *bind_navigationpolygoninstance_set_navigation_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigationpolygoninstance__navpoly_changed = api_core.godot_method_bind_get_method('NavigationPolygonInstance', '_navpoly_changed')
  bind_navigationpolygoninstance_get_navigation_polygon = api_core.godot_method_bind_get_method('NavigationPolygonInstance', 'get_navigation_polygon')
  bind_navigationpolygoninstance_is_enabled = api_core.godot_method_bind_get_method('NavigationPolygonInstance', 'is_enabled')
  bind_navigationpolygoninstance_set_enabled = api_core.godot_method_bind_get_method('NavigationPolygonInstance', 'set_enabled')
  bind_navigationpolygoninstance_set_navigation_polygon = api_core.godot_method_bind_get_method('NavigationPolygonInstance', 'set_navigation_polygon')

############################Generated class###################################
cdef class NavigationPolygonInstance(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NavigationPolygonInstance")())
##################################Generated Properties#########################################
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def navpoly(self): 
    return self.get_navpoly()
  @navpoly.setter 
  def navpoly(self,value): 
    self.set_navpoly(value)

##################################Generated Methods#########################################
  def  _navpoly_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance__navpoly_changed,self.godot_owner,[NULL,],NULL)
  def  get_navigation_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NavigationPolygon ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_get_navigation_polygon,self.godot_owner,[NULL,],&ret)
  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_is_enabled,self.godot_owner,[NULL,],&ret)
  def  set_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_set_enabled,self.godot_owner,[NULL,],NULL)
  def  set_navigation_polygon(self, navpoly):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_set_navigation_polygon,self.godot_owner,[NULL,],NULL)
