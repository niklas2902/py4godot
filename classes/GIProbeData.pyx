from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_giprobedata_get_bias
cdef godot_method_bind *bind_giprobedata_get_bounds
cdef godot_method_bind *bind_giprobedata_get_cell_size
cdef godot_method_bind *bind_giprobedata_get_dynamic_data
cdef godot_method_bind *bind_giprobedata_get_dynamic_range
cdef godot_method_bind *bind_giprobedata_get_energy
cdef godot_method_bind *bind_giprobedata_get_normal_bias
cdef godot_method_bind *bind_giprobedata_get_propagation
cdef godot_method_bind *bind_giprobedata_get_to_cell_xform
cdef godot_method_bind *bind_giprobedata_is_compressed
cdef godot_method_bind *bind_giprobedata_is_interior
cdef godot_method_bind *bind_giprobedata_set_bias
cdef godot_method_bind *bind_giprobedata_set_bounds
cdef godot_method_bind *bind_giprobedata_set_cell_size
cdef godot_method_bind *bind_giprobedata_set_compress
cdef godot_method_bind *bind_giprobedata_set_dynamic_data
cdef godot_method_bind *bind_giprobedata_set_dynamic_range
cdef godot_method_bind *bind_giprobedata_set_energy
cdef godot_method_bind *bind_giprobedata_set_interior
cdef godot_method_bind *bind_giprobedata_set_normal_bias
cdef godot_method_bind *bind_giprobedata_set_propagation
cdef godot_method_bind *bind_giprobedata_set_to_cell_xform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_giprobedata_get_bias = api_core.godot_method_bind_get_method('GIProbeData', 'get_bias')
  bind_giprobedata_get_bounds = api_core.godot_method_bind_get_method('GIProbeData', 'get_bounds')
  bind_giprobedata_get_cell_size = api_core.godot_method_bind_get_method('GIProbeData', 'get_cell_size')
  bind_giprobedata_get_dynamic_data = api_core.godot_method_bind_get_method('GIProbeData', 'get_dynamic_data')
  bind_giprobedata_get_dynamic_range = api_core.godot_method_bind_get_method('GIProbeData', 'get_dynamic_range')
  bind_giprobedata_get_energy = api_core.godot_method_bind_get_method('GIProbeData', 'get_energy')
  bind_giprobedata_get_normal_bias = api_core.godot_method_bind_get_method('GIProbeData', 'get_normal_bias')
  bind_giprobedata_get_propagation = api_core.godot_method_bind_get_method('GIProbeData', 'get_propagation')
  bind_giprobedata_get_to_cell_xform = api_core.godot_method_bind_get_method('GIProbeData', 'get_to_cell_xform')
  bind_giprobedata_is_compressed = api_core.godot_method_bind_get_method('GIProbeData', 'is_compressed')
  bind_giprobedata_is_interior = api_core.godot_method_bind_get_method('GIProbeData', 'is_interior')
  bind_giprobedata_set_bias = api_core.godot_method_bind_get_method('GIProbeData', 'set_bias')
  bind_giprobedata_set_bounds = api_core.godot_method_bind_get_method('GIProbeData', 'set_bounds')
  bind_giprobedata_set_cell_size = api_core.godot_method_bind_get_method('GIProbeData', 'set_cell_size')
  bind_giprobedata_set_compress = api_core.godot_method_bind_get_method('GIProbeData', 'set_compress')
  bind_giprobedata_set_dynamic_data = api_core.godot_method_bind_get_method('GIProbeData', 'set_dynamic_data')
  bind_giprobedata_set_dynamic_range = api_core.godot_method_bind_get_method('GIProbeData', 'set_dynamic_range')
  bind_giprobedata_set_energy = api_core.godot_method_bind_get_method('GIProbeData', 'set_energy')
  bind_giprobedata_set_interior = api_core.godot_method_bind_get_method('GIProbeData', 'set_interior')
  bind_giprobedata_set_normal_bias = api_core.godot_method_bind_get_method('GIProbeData', 'set_normal_bias')
  bind_giprobedata_set_propagation = api_core.godot_method_bind_get_method('GIProbeData', 'set_propagation')
  bind_giprobedata_set_to_cell_xform = api_core.godot_method_bind_get_method('GIProbeData', 'set_to_cell_xform')

############################Generated class###################################
cdef class GIProbeData(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GIProbeData")())
##################################Generated Properties#########################################
  @property
  def bias(self): 
    return self.get_bias()
  @bias.setter 
  def bias(self,value): 
    self.set_bias(value)
  @property
  def bounds(self): 
    return self.get_bounds()
  @bounds.setter 
  def bounds(self,value): 
    self.set_bounds(value)
  @property
  def cell_size(self): 
    return self.get_cell_size()
  @cell_size.setter 
  def cell_size(self,value): 
    self.set_cell_size(value)
  @property
  def compress(self): 
    return self.get_compress()
  @compress.setter 
  def compress(self,value): 
    self.set_compress(value)
  @property
  def dynamic_data(self): 
    return self.get_dynamic_data()
  @dynamic_data.setter 
  def dynamic_data(self,value): 
    self.set_dynamic_data(value)
  @property
  def dynamic_range(self): 
    return self.get_dynamic_range()
  @dynamic_range.setter 
  def dynamic_range(self,value): 
    self.set_dynamic_range(value)
  @property
  def energy(self): 
    return self.get_energy()
  @energy.setter 
  def energy(self,value): 
    self.set_energy(value)
  @property
  def interior(self): 
    return self.get_interior()
  @interior.setter 
  def interior(self,value): 
    self.set_interior(value)
  @property
  def normal_bias(self): 
    return self.get_normal_bias()
  @normal_bias.setter 
  def normal_bias(self,value): 
    self.set_normal_bias(value)
  @property
  def propagation(self): 
    return self.get_propagation()
  @propagation.setter 
  def propagation(self,value): 
    self.set_propagation(value)
  @property
  def to_cell_xform(self): 
    return self.get_to_cell_xform()
  @to_cell_xform.setter 
  def to_cell_xform(self,value): 
    self.set_to_cell_xform(value)

##################################Generated Methods#########################################
  def  get_bias(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_bias,self.godot_owner,[NULL,],&ret)
  def  get_bounds(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_bounds,self.godot_owner,[NULL,],&ret)
  def  get_cell_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_cell_size,self.godot_owner,[NULL,],&ret)
  def  get_dynamic_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_dynamic_data,self.godot_owner,[NULL,],&ret)
  def  get_dynamic_range(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_dynamic_range,self.godot_owner,[NULL,],&ret)
  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_energy,self.godot_owner,[NULL,],&ret)
  def  get_normal_bias(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_normal_bias,self.godot_owner,[NULL,],&ret)
  def  get_propagation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_propagation,self.godot_owner,[NULL,],&ret)
  def  get_to_cell_xform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_get_to_cell_xform,self.godot_owner,[NULL,],&ret)
  def  is_compressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_is_compressed,self.godot_owner,[NULL,],&ret)
  def  is_interior(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_giprobedata_is_interior,self.godot_owner,[NULL,],&ret)
  def  set_bias(self, bias):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_bias,self.godot_owner,[NULL,],NULL)
  def  set_bounds(self, bounds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_bounds,self.godot_owner,[NULL,],NULL)
  def  set_cell_size(self, cell_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_cell_size,self.godot_owner,[NULL,],NULL)
  def  set_compress(self, compress):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_compress,self.godot_owner,[NULL,],NULL)
  def  set_dynamic_data(self, dynamic_data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_dynamic_data,self.godot_owner,[NULL,],NULL)
  def  set_dynamic_range(self, dynamic_range):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_dynamic_range,self.godot_owner,[NULL,],NULL)
  def  set_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_energy,self.godot_owner,[NULL,],NULL)
  def  set_interior(self, interior):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_interior,self.godot_owner,[NULL,],NULL)
  def  set_normal_bias(self, bias):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_normal_bias,self.godot_owner,[NULL,],NULL)
  def  set_propagation(self, propagation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_propagation,self.godot_owner,[NULL,],NULL)
  def  set_to_cell_xform(self, to_cell_xform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobedata_set_to_cell_xform,self.godot_owner,[NULL,],NULL)
