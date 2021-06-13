
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
cimport classes.NavigationPolygon
cimport classes.Node2D 

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
cdef class NavigationPolygonInstance(classes.Node2D.Node2D):
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

    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance__navpoly_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_navigation_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_get_navigation_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_is_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_set_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_navigation_polygon(self,  classes.NavigationPolygon.NavigationPolygon navpoly):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = navpoly.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygoninstance_set_navigation_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
