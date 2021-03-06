from classes.PrimitiveMesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_capsulemesh_get_mid_height
cdef godot_method_bind *bind_capsulemesh_get_radial_segments
cdef godot_method_bind *bind_capsulemesh_get_radius
cdef godot_method_bind *bind_capsulemesh_get_rings
cdef godot_method_bind *bind_capsulemesh_set_mid_height
cdef godot_method_bind *bind_capsulemesh_set_radial_segments
cdef godot_method_bind *bind_capsulemesh_set_radius
cdef godot_method_bind *bind_capsulemesh_set_rings
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_capsulemesh_get_mid_height = api_core.godot_method_bind_get_method('CapsuleMesh', 'get_mid_height')
  bind_capsulemesh_get_radial_segments = api_core.godot_method_bind_get_method('CapsuleMesh', 'get_radial_segments')
  bind_capsulemesh_get_radius = api_core.godot_method_bind_get_method('CapsuleMesh', 'get_radius')
  bind_capsulemesh_get_rings = api_core.godot_method_bind_get_method('CapsuleMesh', 'get_rings')
  bind_capsulemesh_set_mid_height = api_core.godot_method_bind_get_method('CapsuleMesh', 'set_mid_height')
  bind_capsulemesh_set_radial_segments = api_core.godot_method_bind_get_method('CapsuleMesh', 'set_radial_segments')
  bind_capsulemesh_set_radius = api_core.godot_method_bind_get_method('CapsuleMesh', 'set_radius')
  bind_capsulemesh_set_rings = api_core.godot_method_bind_get_method('CapsuleMesh', 'set_rings')

############################Generated class###################################
cdef class CapsuleMesh(PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CapsuleMesh")())
##################################Generated Properties#########################################
  @property
  def mid_height(self): 
    return self.get_mid_height()
  @mid_height.setter 
  def mid_height(self,value): 
    self.set_mid_height(value)
  @property
  def radial_segments(self): 
    return self.get_radial_segments()
  @radial_segments.setter 
  def radial_segments(self,value): 
    self.set_radial_segments(value)
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)
  @property
  def rings(self): 
    return self.get_rings()
  @rings.setter 
  def rings(self,value): 
    self.set_rings(value)

##################################Generated Methods#########################################
  def  get_mid_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_get_mid_height,self.godot_owner,[NULL,],&ret)
  def  get_radial_segments(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_get_radial_segments,self.godot_owner,[NULL,],&ret)
  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_get_radius,self.godot_owner,[NULL,],&ret)
  def  get_rings(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_get_rings,self.godot_owner,[NULL,],&ret)
  def  set_mid_height(self, mid_height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_set_mid_height,self.godot_owner,[NULL,],NULL)
  def  set_radial_segments(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_set_radial_segments,self.godot_owner,[NULL,],NULL)
  def  set_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_set_radius,self.godot_owner,[NULL,],NULL)
  def  set_rings(self, rings):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_capsulemesh_set_rings,self.godot_owner,[NULL,],NULL)
