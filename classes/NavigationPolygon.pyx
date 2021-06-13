
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigationpolygon__get_outlines
cdef godot_method_bind *bind_navigationpolygon__get_polygons
cdef godot_method_bind *bind_navigationpolygon__set_outlines
cdef godot_method_bind *bind_navigationpolygon__set_polygons
cdef godot_method_bind *bind_navigationpolygon_add_outline
cdef godot_method_bind *bind_navigationpolygon_add_outline_at_index
cdef godot_method_bind *bind_navigationpolygon_add_polygon
cdef godot_method_bind *bind_navigationpolygon_clear_outlines
cdef godot_method_bind *bind_navigationpolygon_clear_polygons
cdef godot_method_bind *bind_navigationpolygon_get_outline
cdef godot_method_bind *bind_navigationpolygon_get_outline_count
cdef godot_method_bind *bind_navigationpolygon_get_polygon
cdef godot_method_bind *bind_navigationpolygon_get_polygon_count
cdef godot_method_bind *bind_navigationpolygon_get_vertices
cdef godot_method_bind *bind_navigationpolygon_make_polygons_from_outlines
cdef godot_method_bind *bind_navigationpolygon_remove_outline
cdef godot_method_bind *bind_navigationpolygon_set_outline
cdef godot_method_bind *bind_navigationpolygon_set_vertices
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigationpolygon__get_outlines = api_core.godot_method_bind_get_method('NavigationPolygon', '_get_outlines')
  bind_navigationpolygon__get_polygons = api_core.godot_method_bind_get_method('NavigationPolygon', '_get_polygons')
  bind_navigationpolygon__set_outlines = api_core.godot_method_bind_get_method('NavigationPolygon', '_set_outlines')
  bind_navigationpolygon__set_polygons = api_core.godot_method_bind_get_method('NavigationPolygon', '_set_polygons')
  bind_navigationpolygon_add_outline = api_core.godot_method_bind_get_method('NavigationPolygon', 'add_outline')
  bind_navigationpolygon_add_outline_at_index = api_core.godot_method_bind_get_method('NavigationPolygon', 'add_outline_at_index')
  bind_navigationpolygon_add_polygon = api_core.godot_method_bind_get_method('NavigationPolygon', 'add_polygon')
  bind_navigationpolygon_clear_outlines = api_core.godot_method_bind_get_method('NavigationPolygon', 'clear_outlines')
  bind_navigationpolygon_clear_polygons = api_core.godot_method_bind_get_method('NavigationPolygon', 'clear_polygons')
  bind_navigationpolygon_get_outline = api_core.godot_method_bind_get_method('NavigationPolygon', 'get_outline')
  bind_navigationpolygon_get_outline_count = api_core.godot_method_bind_get_method('NavigationPolygon', 'get_outline_count')
  bind_navigationpolygon_get_polygon = api_core.godot_method_bind_get_method('NavigationPolygon', 'get_polygon')
  bind_navigationpolygon_get_polygon_count = api_core.godot_method_bind_get_method('NavigationPolygon', 'get_polygon_count')
  bind_navigationpolygon_get_vertices = api_core.godot_method_bind_get_method('NavigationPolygon', 'get_vertices')
  bind_navigationpolygon_make_polygons_from_outlines = api_core.godot_method_bind_get_method('NavigationPolygon', 'make_polygons_from_outlines')
  bind_navigationpolygon_remove_outline = api_core.godot_method_bind_get_method('NavigationPolygon', 'remove_outline')
  bind_navigationpolygon_set_outline = api_core.godot_method_bind_get_method('NavigationPolygon', 'set_outline')
  bind_navigationpolygon_set_vertices = api_core.godot_method_bind_get_method('NavigationPolygon', 'set_vertices')

############################Generated class###################################
cdef class NavigationPolygon(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NavigationPolygon")())
##################################Generated Properties#########################################
  @property
  def outlines(self): 
    return self.get_outlines()
  @outlines.setter 
  def outlines(self,value): 
    self.set_outlines(value)
  @property
  def polygons(self): 
    return self.get_polygons()
  @polygons.setter 
  def polygons(self,value): 
    self.set_polygons(value)
  @property
  def vertices(self): 
    return self.get_vertices()
  @vertices.setter 
  def vertices(self,value): 
    self.set_vertices(value)

##################################Generated Methods#########################################
  def  _get_outlines(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__get_outlines,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _get_polygons(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__get_polygons,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_outlines(self,  Array outlines):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &outlines._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__set_outlines,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_polygons(self,  Array polygons):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygons._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__set_polygons,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_outline(self,  PoolVector2Array outline):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &outline._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_outline,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_outline_at_index(self,  PoolVector2Array outline,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &outline._native
    args[1] = &index
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_outline_at_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_polygon(self,  PoolIntArray polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygon._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_outlines(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_clear_outlines,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_polygons(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_clear_polygons,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_outline(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_outline,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_outline_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_outline_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_polygon(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_polygon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_polygon_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_polygon_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_vertices(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_vertices,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  make_polygons_from_outlines(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_make_polygons_from_outlines,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_outline(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_remove_outline,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_outline(self,  int idx,  PoolVector2Array outline):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &outline._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_set_outline,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertices(self,  PoolVector2Array vertices):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vertices._native
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_set_vertices,self.godot_owner,args,NULL)
    hello('hallo2')
