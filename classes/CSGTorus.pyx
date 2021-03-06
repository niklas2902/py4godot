from classes.CSGPrimitive cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgtorus_get_inner_radius
cdef godot_method_bind *bind_csgtorus_get_material
cdef godot_method_bind *bind_csgtorus_get_outer_radius
cdef godot_method_bind *bind_csgtorus_get_ring_sides
cdef godot_method_bind *bind_csgtorus_get_sides
cdef godot_method_bind *bind_csgtorus_get_smooth_faces
cdef godot_method_bind *bind_csgtorus_set_inner_radius
cdef godot_method_bind *bind_csgtorus_set_material
cdef godot_method_bind *bind_csgtorus_set_outer_radius
cdef godot_method_bind *bind_csgtorus_set_ring_sides
cdef godot_method_bind *bind_csgtorus_set_sides
cdef godot_method_bind *bind_csgtorus_set_smooth_faces
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgtorus_get_inner_radius = api_core.godot_method_bind_get_method('CSGTorus', 'get_inner_radius')
  bind_csgtorus_get_material = api_core.godot_method_bind_get_method('CSGTorus', 'get_material')
  bind_csgtorus_get_outer_radius = api_core.godot_method_bind_get_method('CSGTorus', 'get_outer_radius')
  bind_csgtorus_get_ring_sides = api_core.godot_method_bind_get_method('CSGTorus', 'get_ring_sides')
  bind_csgtorus_get_sides = api_core.godot_method_bind_get_method('CSGTorus', 'get_sides')
  bind_csgtorus_get_smooth_faces = api_core.godot_method_bind_get_method('CSGTorus', 'get_smooth_faces')
  bind_csgtorus_set_inner_radius = api_core.godot_method_bind_get_method('CSGTorus', 'set_inner_radius')
  bind_csgtorus_set_material = api_core.godot_method_bind_get_method('CSGTorus', 'set_material')
  bind_csgtorus_set_outer_radius = api_core.godot_method_bind_get_method('CSGTorus', 'set_outer_radius')
  bind_csgtorus_set_ring_sides = api_core.godot_method_bind_get_method('CSGTorus', 'set_ring_sides')
  bind_csgtorus_set_sides = api_core.godot_method_bind_get_method('CSGTorus', 'set_sides')
  bind_csgtorus_set_smooth_faces = api_core.godot_method_bind_get_method('CSGTorus', 'set_smooth_faces')

############################Generated class###################################
cdef class CSGTorus(CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGTorus")())
##################################Generated Properties#########################################
  @property
  def inner_radius(self): 
    return self.get_inner_radius()
  @inner_radius.setter 
  def inner_radius(self,value): 
    self.set_inner_radius(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def outer_radius(self): 
    return self.get_outer_radius()
  @outer_radius.setter 
  def outer_radius(self,value): 
    self.set_outer_radius(value)
  @property
  def ring_sides(self): 
    return self.get_ring_sides()
  @ring_sides.setter 
  def ring_sides(self,value): 
    self.set_ring_sides(value)
  @property
  def sides(self): 
    return self.get_sides()
  @sides.setter 
  def sides(self,value): 
    self.set_sides(value)
  @property
  def smooth_faces(self): 
    return self.get_smooth_faces()
  @smooth_faces.setter 
  def smooth_faces(self,value): 
    self.set_smooth_faces(value)

##################################Generated Methods#########################################
  def  get_inner_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_inner_radius,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_material,self.godot_owner,[NULL,],&ret)
  def  get_outer_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_outer_radius,self.godot_owner,[NULL,],&ret)
  def  get_ring_sides(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_ring_sides,self.godot_owner,[NULL,],&ret)
  def  get_sides(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_sides,self.godot_owner,[NULL,],&ret)
  def  get_smooth_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_csgtorus_get_smooth_faces,self.godot_owner,[NULL,],&ret)
  def  set_inner_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_inner_radius,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_material,self.godot_owner,[NULL,],NULL)
  def  set_outer_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_outer_radius,self.godot_owner,[NULL,],NULL)
  def  set_ring_sides(self, sides):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_ring_sides,self.godot_owner,[NULL,],NULL)
  def  set_sides(self, sides):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_sides,self.godot_owner,[NULL,],NULL)
  def  set_smooth_faces(self, smooth_faces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgtorus_set_smooth_faces,self.godot_owner,[NULL,],NULL)
