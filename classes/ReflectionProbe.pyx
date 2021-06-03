
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
cimport classes.VisualInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_reflectionprobe_are_shadows_enabled
cdef godot_method_bind *bind_reflectionprobe_get_cull_mask
cdef godot_method_bind *bind_reflectionprobe_get_extents
cdef godot_method_bind *bind_reflectionprobe_get_intensity
cdef godot_method_bind *bind_reflectionprobe_get_interior_ambient
cdef godot_method_bind *bind_reflectionprobe_get_interior_ambient_energy
cdef godot_method_bind *bind_reflectionprobe_get_interior_ambient_probe_contribution
cdef godot_method_bind *bind_reflectionprobe_get_max_distance
cdef godot_method_bind *bind_reflectionprobe_get_origin_offset
cdef godot_method_bind *bind_reflectionprobe_get_update_mode
cdef godot_method_bind *bind_reflectionprobe_is_box_projection_enabled
cdef godot_method_bind *bind_reflectionprobe_is_set_as_interior
cdef godot_method_bind *bind_reflectionprobe_set_as_interior
cdef godot_method_bind *bind_reflectionprobe_set_cull_mask
cdef godot_method_bind *bind_reflectionprobe_set_enable_box_projection
cdef godot_method_bind *bind_reflectionprobe_set_enable_shadows
cdef godot_method_bind *bind_reflectionprobe_set_extents
cdef godot_method_bind *bind_reflectionprobe_set_intensity
cdef godot_method_bind *bind_reflectionprobe_set_interior_ambient
cdef godot_method_bind *bind_reflectionprobe_set_interior_ambient_energy
cdef godot_method_bind *bind_reflectionprobe_set_interior_ambient_probe_contribution
cdef godot_method_bind *bind_reflectionprobe_set_max_distance
cdef godot_method_bind *bind_reflectionprobe_set_origin_offset
cdef godot_method_bind *bind_reflectionprobe_set_update_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_reflectionprobe_are_shadows_enabled = api_core.godot_method_bind_get_method('ReflectionProbe', 'are_shadows_enabled')
  bind_reflectionprobe_get_cull_mask = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_cull_mask')
  bind_reflectionprobe_get_extents = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_extents')
  bind_reflectionprobe_get_intensity = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_intensity')
  bind_reflectionprobe_get_interior_ambient = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_interior_ambient')
  bind_reflectionprobe_get_interior_ambient_energy = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_interior_ambient_energy')
  bind_reflectionprobe_get_interior_ambient_probe_contribution = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_interior_ambient_probe_contribution')
  bind_reflectionprobe_get_max_distance = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_max_distance')
  bind_reflectionprobe_get_origin_offset = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_origin_offset')
  bind_reflectionprobe_get_update_mode = api_core.godot_method_bind_get_method('ReflectionProbe', 'get_update_mode')
  bind_reflectionprobe_is_box_projection_enabled = api_core.godot_method_bind_get_method('ReflectionProbe', 'is_box_projection_enabled')
  bind_reflectionprobe_is_set_as_interior = api_core.godot_method_bind_get_method('ReflectionProbe', 'is_set_as_interior')
  bind_reflectionprobe_set_as_interior = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_as_interior')
  bind_reflectionprobe_set_cull_mask = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_cull_mask')
  bind_reflectionprobe_set_enable_box_projection = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_enable_box_projection')
  bind_reflectionprobe_set_enable_shadows = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_enable_shadows')
  bind_reflectionprobe_set_extents = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_extents')
  bind_reflectionprobe_set_intensity = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_intensity')
  bind_reflectionprobe_set_interior_ambient = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_interior_ambient')
  bind_reflectionprobe_set_interior_ambient_energy = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_interior_ambient_energy')
  bind_reflectionprobe_set_interior_ambient_probe_contribution = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_interior_ambient_probe_contribution')
  bind_reflectionprobe_set_max_distance = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_max_distance')
  bind_reflectionprobe_set_origin_offset = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_origin_offset')
  bind_reflectionprobe_set_update_mode = api_core.godot_method_bind_get_method('ReflectionProbe', 'set_update_mode')

############################Generated class###################################
cdef class ReflectionProbe(classes.VisualInstance.VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ReflectionProbe")())
##################################Generated Properties#########################################
  @property
  def box_projection(self): 
    return self.get_box_projection()
  @box_projection.setter 
  def box_projection(self,value): 
    self.set_box_projection(value)
  @property
  def cull_mask(self): 
    return self.get_cull_mask()
  @cull_mask.setter 
  def cull_mask(self,value): 
    self.set_cull_mask(value)
  @property
  def enable_shadows(self): 
    return self.get_enable_shadows()
  @enable_shadows.setter 
  def enable_shadows(self,value): 
    self.set_enable_shadows(value)
  @property
  def extents(self): 
    return self.get_extents()
  @extents.setter 
  def extents(self,value): 
    self.set_extents(value)
  @property
  def intensity(self): 
    return self.get_intensity()
  @intensity.setter 
  def intensity(self,value): 
    self.set_intensity(value)
  @property
  def interior_ambient_color(self): 
    return self.get_interior_ambient_color()
  @interior_ambient_color.setter 
  def interior_ambient_color(self,value): 
    self.set_interior_ambient_color(value)
  @property
  def interior_ambient_contrib(self): 
    return self.get_interior_ambient_contrib()
  @interior_ambient_contrib.setter 
  def interior_ambient_contrib(self,value): 
    self.set_interior_ambient_contrib(value)
  @property
  def interior_ambient_energy(self): 
    return self.get_interior_ambient_energy()
  @interior_ambient_energy.setter 
  def interior_ambient_energy(self,value): 
    self.set_interior_ambient_energy(value)
  @property
  def interior_enable(self): 
    return self.get_interior_enable()
  @interior_enable.setter 
  def interior_enable(self,value): 
    self.set_interior_enable(value)
  @property
  def max_distance(self): 
    return self.get_max_distance()
  @max_distance.setter 
  def max_distance(self,value): 
    self.set_max_distance(value)
  @property
  def origin_offset(self): 
    return self.get_origin_offset()
  @origin_offset.setter 
  def origin_offset(self,value): 
    self.set_origin_offset(value)
  @property
  def update_mode(self): 
    return self.get_update_mode()
  @update_mode.setter 
  def update_mode(self,value): 
    self.set_update_mode(value)

##################################Generated Methods#########################################
  def  are_shadows_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_are_shadows_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cull_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_cull_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_extents(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_extents,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_intensity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_intensity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_interior_ambient(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_interior_ambient,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_interior_ambient_energy(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_interior_ambient_energy,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_interior_ambient_probe_contribution(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_interior_ambient_probe_contribution,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_max_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_origin_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_origin_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_update_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef UpdateMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_get_update_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_box_projection_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_is_box_projection_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_set_as_interior(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_is_set_as_interior,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_as_interior(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_as_interior,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cull_mask(self,  int layers):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layers
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_cull_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enable_box_projection(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_enable_box_projection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enable_shadows(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_enable_shadows,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_extents(self,  Vector3 extents):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &extents._native
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_extents,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_intensity(self,  float intensity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &intensity
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_intensity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_interior_ambient(self,  Color ambient):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ambient._native
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_interior_ambient,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_interior_ambient_energy(self,  float ambient_energy):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ambient_energy
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_interior_ambient_energy,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_interior_ambient_probe_contribution(self,  float ambient_probe_contribution):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ambient_probe_contribution
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_interior_ambient_probe_contribution,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_distance(self,  float max_distance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_distance
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_max_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_origin_offset(self,  Vector3 origin_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &origin_offset._native
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_origin_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_update_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_reflectionprobe_set_update_mode,self.godot_owner,args,NULL)
    hello('hallo2')
