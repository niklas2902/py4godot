
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Node
cimport classes.GIProbeData
cimport classes.VisualInstance 

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
cdef class GIProbe(classes.VisualInstance.VisualInstance):
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
  def  bake(self,  classes.Node.Node from_node,  bool create_visual_debug):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = from_node.godot_owner
    args[1] = &create_visual_debug
    api_core.godot_method_bind_ptrcall(bind_giprobe_bake,self.godot_owner,args,NULL)
    hello('hallo2')
  def  debug_bake(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_giprobe_debug_bake,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bias(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_bias,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dynamic_range(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_dynamic_range,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_energy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_energy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_extents,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_normal_bias(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_normal_bias,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_probe_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_probe_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_propagation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_propagation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_subdiv(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Subdiv* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_get_subdiv,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_compressed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_is_compressed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_interior(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_giprobe_is_interior,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_bias(self,  float max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_bias,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_compress(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_compress,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dynamic_range(self,  int max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_dynamic_range,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_energy(self,  float max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_energy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_extents(self,  Vector3 extents):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &extents._native
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_extents,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_interior(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_interior,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_bias(self,  float max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_normal_bias,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_probe_data(self,  classes.GIProbeData.GIProbeData data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = data.godot_owner
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_probe_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_propagation(self,  float max):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_propagation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_subdiv(self,  int subdiv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &subdiv
    api_core.godot_method_bind_ptrcall(bind_giprobe_set_subdiv,self.godot_owner,args,NULL)
    hello('hallo2')
