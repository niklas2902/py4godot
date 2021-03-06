from classes.PrimitiveMesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cylindermesh_get_bottom_radius
cdef godot_method_bind *bind_cylindermesh_get_height
cdef godot_method_bind *bind_cylindermesh_get_radial_segments
cdef godot_method_bind *bind_cylindermesh_get_rings
cdef godot_method_bind *bind_cylindermesh_get_top_radius
cdef godot_method_bind *bind_cylindermesh_set_bottom_radius
cdef godot_method_bind *bind_cylindermesh_set_height
cdef godot_method_bind *bind_cylindermesh_set_radial_segments
cdef godot_method_bind *bind_cylindermesh_set_rings
cdef godot_method_bind *bind_cylindermesh_set_top_radius
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cylindermesh_get_bottom_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'get_bottom_radius')
  bind_cylindermesh_get_height = api_core.godot_method_bind_get_method('CylinderMesh', 'get_height')
  bind_cylindermesh_get_radial_segments = api_core.godot_method_bind_get_method('CylinderMesh', 'get_radial_segments')
  bind_cylindermesh_get_rings = api_core.godot_method_bind_get_method('CylinderMesh', 'get_rings')
  bind_cylindermesh_get_top_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'get_top_radius')
  bind_cylindermesh_set_bottom_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'set_bottom_radius')
  bind_cylindermesh_set_height = api_core.godot_method_bind_get_method('CylinderMesh', 'set_height')
  bind_cylindermesh_set_radial_segments = api_core.godot_method_bind_get_method('CylinderMesh', 'set_radial_segments')
  bind_cylindermesh_set_rings = api_core.godot_method_bind_get_method('CylinderMesh', 'set_rings')
  bind_cylindermesh_set_top_radius = api_core.godot_method_bind_get_method('CylinderMesh', 'set_top_radius')

############################Generated class###################################
cdef class CylinderMesh(PrimitiveMesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CylinderMesh")())
##################################Generated Properties#########################################
  @property
  def bottom_radius(self): 
    return self.get_bottom_radius()
  @bottom_radius.setter 
  def bottom_radius(self,value): 
    self.set_bottom_radius(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def radial_segments(self): 
    return self.get_radial_segments()
  @radial_segments.setter 
  def radial_segments(self,value): 
    self.set_radial_segments(value)
  @property
  def rings(self): 
    return self.get_rings()
  @rings.setter 
  def rings(self,value): 
    self.set_rings(value)
  @property
  def top_radius(self): 
    return self.get_top_radius()
  @top_radius.setter 
  def top_radius(self,value): 
    self.set_top_radius(value)

##################################Generated Methods#########################################
  def  get_bottom_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_bottom_radius,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_height,self.godot_owner,[NULL,],&ret)
  def  get_radial_segments(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_radial_segments,self.godot_owner,[NULL,],&ret)
  def  get_rings(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_rings,self.godot_owner,[NULL,],&ret)
  def  get_top_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_get_top_radius,self.godot_owner,[NULL,],&ret)
  def  set_bottom_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_bottom_radius,self.godot_owner,[NULL,],NULL)
  def  set_height(self, height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_height,self.godot_owner,[NULL,],NULL)
  def  set_radial_segments(self, segments):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_radial_segments,self.godot_owner,[NULL,],NULL)
  def  set_rings(self, rings):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_rings,self.godot_owner,[NULL,],NULL)
  def  set_top_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cylindermesh_set_top_radius,self.godot_owner,[NULL,],NULL)
