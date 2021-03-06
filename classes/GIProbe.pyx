from classes.VisualInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_giprobe_bake
cdef godot_method_bind *bind_giprobe_debug_bake
cdef godot_method_bind *bind_giprobe_get_bias
cdef godot_method_bind *bind_giprobe_get_dynamic_range
cdef godot_method_bind *bind_giprobe_get_energy
cdef godot_method_bind *bind_giprobe_get_extents
cdef godot_method_bind *bind_giprobe_get_normal_bias
cdef godot_method_bind *bind_giprobe_get_probe_data
cdef godot_method_bind *bind_giprobe_get_propagation
cdef godot_method_bind *bind_giprobe_get_subdiv
cdef godot_method_bind *bind_giprobe_is_compressed
cdef godot_method_bind *bind_giprobe_is_interior
cdef godot_method_bind *bind_giprobe_set_bias
cdef godot_method_bind *bind_giprobe_set_compress
cdef godot_method_bind *bind_giprobe_set_dynamic_range
cdef godot_method_bind *bind_giprobe_set_energy
cdef godot_method_bind *bind_giprobe_set_extents
cdef godot_method_bind *bind_giprobe_set_interior
cdef godot_method_bind *bind_giprobe_set_normal_bias
cdef godot_method_bind *bind_giprobe_set_probe_data
cdef godot_method_bind *bind_giprobe_set_propagation
cdef godot_method_bind *bind_giprobe_set_subdiv
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_giprobe_bake = api_core.godot_method_bind_get_method('GIProbe', 'bake')
  bind_giprobe_debug_bake = api_core.godot_method_bind_get_method('GIProbe', 'debug_bake')
  bind_giprobe_get_bias = api_core.godot_method_bind_get_method('GIProbe', 'get_bias')
  bind_giprobe_get_dynamic_range = api_core.godot_method_bind_get_method('GIProbe', 'get_dynamic_range')
  bind_giprobe_get_energy = api_core.godot_method_bind_get_method('GIProbe', 'get_energy')
  bind_giprobe_get_extents = api_core.godot_method_bind_get_method('GIProbe', 'get_extents')
  bind_giprobe_get_normal_bias = api_core.godot_method_bind_get_method('GIProbe', 'get_normal_bias')
  bind_giprobe_get_probe_data = api_core.godot_method_bind_get_method('GIProbe', 'get_probe_data')
  bind_giprobe_get_propagation = api_core.godot_method_bind_get_method('GIProbe', 'get_propagation')
  bind_giprobe_get_subdiv = api_core.godot_method_bind_get_method('GIProbe', 'get_subdiv')
  bind_giprobe_is_compressed = api_core.godot_method_bind_get_method('GIProbe', 'is_compressed')
  bind_giprobe_is_interior = api_core.godot_method_bind_get_method('GIProbe', 'is_interior')
  bind_giprobe_set_bias = api_core.godot_method_bind_get_method('GIProbe', 'set_bias')
  bind_giprobe_set_compress = api_core.godot_method_bind_get_method('GIProbe', 'set_compress')
  bind_giprobe_set_dynamic_range = api_core.godot_method_bind_get_method('GIProbe', 'set_dynamic_range')
  bind_giprobe_set_energy = api_core.godot_method_bind_get_method('GIProbe', 'set_energy')
  bind_giprobe_set_extents = api_core.godot_method_bind_get_method('GIProbe', 'set_extents')
  bind_giprobe_set_interior = api_core.godot_method_bind_get_method('GIProbe', 'set_interior')
  bind_giprobe_set_normal_bias = api_core.godot_method_bind_get_method('GIProbe', 'set_normal_bias')
  bind_giprobe_set_probe_data = api_core.godot_method_bind_get_method('GIProbe', 'set_probe_data')
  bind_giprobe_set_propagation = api_core.godot_method_bind_get_method('GIProbe', 'set_propagation')
  bind_giprobe_set_subdiv = api_core.godot_method_bind_get_method('GIProbe', 'set_subdiv')

############################Generated class###################################
cdef class GIProbe(VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GIProbe")())
##################################Generated Properties#########################################
  @property
  def bias(self): 
    return self.get_bias()
  @bias.setter 
  def bias(self,value): 
    self.set_bias(value)
  @property
  def compress(self): 
    return self.get_compress()
  @compress.setter 
  def compress(self,value): 
    self.set_compress(value)
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
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
  def extents(self): 
    return self.get_extents()
  @extents.setter 
  def extents(self,value): 
    self.set_extents(value)
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
  def subdiv(self): 
    return self.get_subdiv()
  @subdiv.setter 
  def subdiv(self,value): 
    self.set_subdiv(value)

##################################Generated Methods#########################################
  def  bake(self, from_nodecreate_visual_debug):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_bake,self.godot_owner,[NULL,],NULL)
  def  debug_bake(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_debug_bake,self.godot_owner,[NULL,],NULL)
  def  get_bias(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_bias,self.godot_owner,[NULL,],&ret)
  def  get_dynamic_range(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_dynamic_range,self.godot_owner,[NULL,],&ret)
  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_energy,self.godot_owner,[NULL,],&ret)
  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_extents,self.godot_owner,[NULL,],&ret)
  def  get_normal_bias(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_normal_bias,self.godot_owner,[NULL,],&ret)
  def  get_probe_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GIProbeData ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_probe_data,self.godot_owner,[NULL,],&ret)
  def  get_propagation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_propagation,self.godot_owner,[NULL,],&ret)
  def  get_subdiv(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GIProbe::Subdiv ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_get_subdiv,self.godot_owner,[NULL,],&ret)
  def  is_compressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_is_compressed,self.godot_owner,[NULL,],&ret)
  def  is_interior(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_giprobe_is_interior,self.godot_owner,[NULL,],&ret)
  def  set_bias(self, max):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_bias,self.godot_owner,[NULL,],NULL)
  def  set_compress(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_compress,self.godot_owner,[NULL,],NULL)
  def  set_dynamic_range(self, max):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_dynamic_range,self.godot_owner,[NULL,],NULL)
  def  set_energy(self, max):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_energy,self.godot_owner,[NULL,],NULL)
  def  set_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_extents,self.godot_owner,[NULL,],NULL)
  def  set_interior(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_interior,self.godot_owner,[NULL,],NULL)
  def  set_normal_bias(self, max):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_normal_bias,self.godot_owner,[NULL,],NULL)
  def  set_probe_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_probe_data,self.godot_owner,[NULL,],NULL)
  def  set_propagation(self, max):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_propagation,self.godot_owner,[NULL,],NULL)
  def  set_subdiv(self, subdiv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_subdiv,self.godot_owner,[NULL,],NULL)
