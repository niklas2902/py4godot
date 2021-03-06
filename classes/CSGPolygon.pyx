from classes.CSGPrimitive cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgpolygon__has_editable_3d_polygon_no_depth
cdef godot_method_bind *bind_csgpolygon__is_editable_3d_polygon
cdef godot_method_bind *bind_csgpolygon__path_changed
cdef godot_method_bind *bind_csgpolygon__path_exited
cdef godot_method_bind *bind_csgpolygon_get_depth
cdef godot_method_bind *bind_csgpolygon_get_material
cdef godot_method_bind *bind_csgpolygon_get_mode
cdef godot_method_bind *bind_csgpolygon_get_path_interval
cdef godot_method_bind *bind_csgpolygon_get_path_node
cdef godot_method_bind *bind_csgpolygon_get_path_rotation
cdef godot_method_bind *bind_csgpolygon_get_polygon
cdef godot_method_bind *bind_csgpolygon_get_smooth_faces
cdef godot_method_bind *bind_csgpolygon_get_spin_degrees
cdef godot_method_bind *bind_csgpolygon_get_spin_sides
cdef godot_method_bind *bind_csgpolygon_is_path_continuous_u
cdef godot_method_bind *bind_csgpolygon_is_path_joined
cdef godot_method_bind *bind_csgpolygon_is_path_local
cdef godot_method_bind *bind_csgpolygon_set_depth
cdef godot_method_bind *bind_csgpolygon_set_material
cdef godot_method_bind *bind_csgpolygon_set_mode
cdef godot_method_bind *bind_csgpolygon_set_path_continuous_u
cdef godot_method_bind *bind_csgpolygon_set_path_interval
cdef godot_method_bind *bind_csgpolygon_set_path_joined
cdef godot_method_bind *bind_csgpolygon_set_path_local
cdef godot_method_bind *bind_csgpolygon_set_path_node
cdef godot_method_bind *bind_csgpolygon_set_path_rotation
cdef godot_method_bind *bind_csgpolygon_set_polygon
cdef godot_method_bind *bind_csgpolygon_set_smooth_faces
cdef godot_method_bind *bind_csgpolygon_set_spin_degrees
cdef godot_method_bind *bind_csgpolygon_set_spin_sides
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgpolygon__has_editable_3d_polygon_no_depth = api_core.godot_method_bind_get_method('CSGPolygon', '_has_editable_3d_polygon_no_depth')
  bind_csgpolygon__is_editable_3d_polygon = api_core.godot_method_bind_get_method('CSGPolygon', '_is_editable_3d_polygon')
  bind_csgpolygon__path_changed = api_core.godot_method_bind_get_method('CSGPolygon', '_path_changed')
  bind_csgpolygon__path_exited = api_core.godot_method_bind_get_method('CSGPolygon', '_path_exited')
  bind_csgpolygon_get_depth = api_core.godot_method_bind_get_method('CSGPolygon', 'get_depth')
  bind_csgpolygon_get_material = api_core.godot_method_bind_get_method('CSGPolygon', 'get_material')
  bind_csgpolygon_get_mode = api_core.godot_method_bind_get_method('CSGPolygon', 'get_mode')
  bind_csgpolygon_get_path_interval = api_core.godot_method_bind_get_method('CSGPolygon', 'get_path_interval')
  bind_csgpolygon_get_path_node = api_core.godot_method_bind_get_method('CSGPolygon', 'get_path_node')
  bind_csgpolygon_get_path_rotation = api_core.godot_method_bind_get_method('CSGPolygon', 'get_path_rotation')
  bind_csgpolygon_get_polygon = api_core.godot_method_bind_get_method('CSGPolygon', 'get_polygon')
  bind_csgpolygon_get_smooth_faces = api_core.godot_method_bind_get_method('CSGPolygon', 'get_smooth_faces')
  bind_csgpolygon_get_spin_degrees = api_core.godot_method_bind_get_method('CSGPolygon', 'get_spin_degrees')
  bind_csgpolygon_get_spin_sides = api_core.godot_method_bind_get_method('CSGPolygon', 'get_spin_sides')
  bind_csgpolygon_is_path_continuous_u = api_core.godot_method_bind_get_method('CSGPolygon', 'is_path_continuous_u')
  bind_csgpolygon_is_path_joined = api_core.godot_method_bind_get_method('CSGPolygon', 'is_path_joined')
  bind_csgpolygon_is_path_local = api_core.godot_method_bind_get_method('CSGPolygon', 'is_path_local')
  bind_csgpolygon_set_depth = api_core.godot_method_bind_get_method('CSGPolygon', 'set_depth')
  bind_csgpolygon_set_material = api_core.godot_method_bind_get_method('CSGPolygon', 'set_material')
  bind_csgpolygon_set_mode = api_core.godot_method_bind_get_method('CSGPolygon', 'set_mode')
  bind_csgpolygon_set_path_continuous_u = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_continuous_u')
  bind_csgpolygon_set_path_interval = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_interval')
  bind_csgpolygon_set_path_joined = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_joined')
  bind_csgpolygon_set_path_local = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_local')
  bind_csgpolygon_set_path_node = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_node')
  bind_csgpolygon_set_path_rotation = api_core.godot_method_bind_get_method('CSGPolygon', 'set_path_rotation')
  bind_csgpolygon_set_polygon = api_core.godot_method_bind_get_method('CSGPolygon', 'set_polygon')
  bind_csgpolygon_set_smooth_faces = api_core.godot_method_bind_get_method('CSGPolygon', 'set_smooth_faces')
  bind_csgpolygon_set_spin_degrees = api_core.godot_method_bind_get_method('CSGPolygon', 'set_spin_degrees')
  bind_csgpolygon_set_spin_sides = api_core.godot_method_bind_get_method('CSGPolygon', 'set_spin_sides')

############################Generated class###################################
cdef class CSGPolygon(CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGPolygon")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def path_continuous_u(self): 
    return self.get_path_continuous_u()
  @path_continuous_u.setter 
  def path_continuous_u(self,value): 
    self.set_path_continuous_u(value)
  @property
  def path_interval(self): 
    return self.get_path_interval()
  @path_interval.setter 
  def path_interval(self,value): 
    self.set_path_interval(value)
  @property
  def path_joined(self): 
    return self.get_path_joined()
  @path_joined.setter 
  def path_joined(self,value): 
    self.set_path_joined(value)
  @property
  def path_local(self): 
    return self.get_path_local()
  @path_local.setter 
  def path_local(self,value): 
    self.set_path_local(value)
  @property
  def path_node(self): 
    return self.get_path_node()
  @path_node.setter 
  def path_node(self,value): 
    self.set_path_node(value)
  @property
  def path_rotation(self): 
    return self.get_path_rotation()
  @path_rotation.setter 
  def path_rotation(self,value): 
    self.set_path_rotation(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)
  @property
  def smooth_faces(self): 
    return self.get_smooth_faces()
  @smooth_faces.setter 
  def smooth_faces(self,value): 
    self.set_smooth_faces(value)
  @property
  def spin_degrees(self): 
    return self.get_spin_degrees()
  @spin_degrees.setter 
  def spin_degrees(self,value): 
    self.set_spin_degrees(value)
  @property
  def spin_sides(self): 
    return self.get_spin_sides()
  @spin_sides.setter 
  def spin_sides(self,value): 
    self.set_spin_sides(value)

##################################Generated Methods#########################################
  def  _has_editable_3d_polygon_no_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon__has_editable_3d_polygon_no_depth,self.godot_owner,[NULL,],&ret)
  def  _is_editable_3d_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon__is_editable_3d_polygon,self.godot_owner,[NULL,],&ret)
  def  _path_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon__path_changed,self.godot_owner,[NULL,],NULL)
  def  _path_exited(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon__path_exited,self.godot_owner,[NULL,],NULL)
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_depth,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_material,self.godot_owner,[NULL,],&ret)
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CSGPolygon::Mode ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_mode,self.godot_owner,[NULL,],&ret)
  def  get_path_interval(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_path_interval,self.godot_owner,[NULL,],&ret)
  def  get_path_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_path_node,self.godot_owner,[NULL,],&ret)
  def  get_path_rotation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CSGPolygon::PathRotation ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_path_rotation,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_polygon,self.godot_owner,[NULL,],&ret)
  def  get_smooth_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_smooth_faces,self.godot_owner,[NULL,],&ret)
  def  get_spin_degrees(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_spin_degrees,self.godot_owner,[NULL,],&ret)
  def  get_spin_sides(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_get_spin_sides,self.godot_owner,[NULL,],&ret)
  def  is_path_continuous_u(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_is_path_continuous_u,self.godot_owner,[NULL,],&ret)
  def  is_path_joined(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_is_path_joined,self.godot_owner,[NULL,],&ret)
  def  is_path_local(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_is_path_local,self.godot_owner,[NULL,],&ret)
  def  set_depth(self, depth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_depth,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_material,self.godot_owner,[NULL,],NULL)
  def  set_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_mode,self.godot_owner,[NULL,],NULL)
  def  set_path_continuous_u(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_continuous_u,self.godot_owner,[NULL,],NULL)
  def  set_path_interval(self, distance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_interval,self.godot_owner,[NULL,],NULL)
  def  set_path_joined(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_joined,self.godot_owner,[NULL,],NULL)
  def  set_path_local(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_local,self.godot_owner,[NULL,],NULL)
  def  set_path_node(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_node,self.godot_owner,[NULL,],NULL)
  def  set_path_rotation(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_path_rotation,self.godot_owner,[NULL,],NULL)
  def  set_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_polygon,self.godot_owner,[NULL,],NULL)
  def  set_smooth_faces(self, smooth_faces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_smooth_faces,self.godot_owner,[NULL,],NULL)
  def  set_spin_degrees(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_spin_degrees,self.godot_owner,[NULL,],NULL)
  def  set_spin_sides(self, spin_sides):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgpolygon_set_spin_sides,self.godot_owner,[NULL,],NULL)
