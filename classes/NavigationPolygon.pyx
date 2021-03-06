from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class NavigationPolygon(Resource):
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
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__get_outlines,self.godot_owner,[NULL,],&ret)
  def  _get_polygons(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__get_polygons,self.godot_owner,[NULL,],&ret)
  def  _set_outlines(self, outlines):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__set_outlines,self.godot_owner,[NULL,],NULL)
  def  _set_polygons(self, polygons):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon__set_polygons,self.godot_owner,[NULL,],NULL)
  def  add_outline(self, outline):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_outline,self.godot_owner,[NULL,],NULL)
  def  add_outline_at_index(self, outlineindex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_outline_at_index,self.godot_owner,[NULL,],NULL)
  def  add_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_add_polygon,self.godot_owner,[NULL,],NULL)
  def  clear_outlines(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_clear_outlines,self.godot_owner,[NULL,],NULL)
  def  clear_polygons(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_clear_polygons,self.godot_owner,[NULL,],NULL)
  def  get_outline(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_outline,self.godot_owner,[NULL,],&ret)
  def  get_outline_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_outline_count,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_polygon,self.godot_owner,[NULL,],&ret)
  def  get_polygon_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_polygon_count,self.godot_owner,[NULL,],&ret)
  def  get_vertices(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_get_vertices,self.godot_owner,[NULL,],&ret)
  def  make_polygons_from_outlines(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_make_polygons_from_outlines,self.godot_owner,[NULL,],NULL)
  def  remove_outline(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_remove_outline,self.godot_owner,[NULL,],NULL)
  def  set_outline(self, idxoutline):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_set_outline,self.godot_owner,[NULL,],NULL)
  def  set_vertices(self, vertices):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationpolygon_set_vertices,self.godot_owner,[NULL,],NULL)
