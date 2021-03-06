from classes.Sky cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_proceduralsky__thread_done
cdef godot_method_bind *bind_proceduralsky__update_sky
cdef godot_method_bind *bind_proceduralsky_get_ground_bottom_color
cdef godot_method_bind *bind_proceduralsky_get_ground_curve
cdef godot_method_bind *bind_proceduralsky_get_ground_energy
cdef godot_method_bind *bind_proceduralsky_get_ground_horizon_color
cdef godot_method_bind *bind_proceduralsky_get_sky_curve
cdef godot_method_bind *bind_proceduralsky_get_sky_energy
cdef godot_method_bind *bind_proceduralsky_get_sky_horizon_color
cdef godot_method_bind *bind_proceduralsky_get_sky_top_color
cdef godot_method_bind *bind_proceduralsky_get_sun_angle_max
cdef godot_method_bind *bind_proceduralsky_get_sun_angle_min
cdef godot_method_bind *bind_proceduralsky_get_sun_color
cdef godot_method_bind *bind_proceduralsky_get_sun_curve
cdef godot_method_bind *bind_proceduralsky_get_sun_energy
cdef godot_method_bind *bind_proceduralsky_get_sun_latitude
cdef godot_method_bind *bind_proceduralsky_get_sun_longitude
cdef godot_method_bind *bind_proceduralsky_get_texture_size
cdef godot_method_bind *bind_proceduralsky_set_ground_bottom_color
cdef godot_method_bind *bind_proceduralsky_set_ground_curve
cdef godot_method_bind *bind_proceduralsky_set_ground_energy
cdef godot_method_bind *bind_proceduralsky_set_ground_horizon_color
cdef godot_method_bind *bind_proceduralsky_set_sky_curve
cdef godot_method_bind *bind_proceduralsky_set_sky_energy
cdef godot_method_bind *bind_proceduralsky_set_sky_horizon_color
cdef godot_method_bind *bind_proceduralsky_set_sky_top_color
cdef godot_method_bind *bind_proceduralsky_set_sun_angle_max
cdef godot_method_bind *bind_proceduralsky_set_sun_angle_min
cdef godot_method_bind *bind_proceduralsky_set_sun_color
cdef godot_method_bind *bind_proceduralsky_set_sun_curve
cdef godot_method_bind *bind_proceduralsky_set_sun_energy
cdef godot_method_bind *bind_proceduralsky_set_sun_latitude
cdef godot_method_bind *bind_proceduralsky_set_sun_longitude
cdef godot_method_bind *bind_proceduralsky_set_texture_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_proceduralsky__thread_done = api_core.godot_method_bind_get_method('ProceduralSky', '_thread_done')
  bind_proceduralsky__update_sky = api_core.godot_method_bind_get_method('ProceduralSky', '_update_sky')
  bind_proceduralsky_get_ground_bottom_color = api_core.godot_method_bind_get_method('ProceduralSky', 'get_ground_bottom_color')
  bind_proceduralsky_get_ground_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'get_ground_curve')
  bind_proceduralsky_get_ground_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'get_ground_energy')
  bind_proceduralsky_get_ground_horizon_color = api_core.godot_method_bind_get_method('ProceduralSky', 'get_ground_horizon_color')
  bind_proceduralsky_get_sky_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sky_curve')
  bind_proceduralsky_get_sky_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sky_energy')
  bind_proceduralsky_get_sky_horizon_color = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sky_horizon_color')
  bind_proceduralsky_get_sky_top_color = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sky_top_color')
  bind_proceduralsky_get_sun_angle_max = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_angle_max')
  bind_proceduralsky_get_sun_angle_min = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_angle_min')
  bind_proceduralsky_get_sun_color = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_color')
  bind_proceduralsky_get_sun_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_curve')
  bind_proceduralsky_get_sun_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_energy')
  bind_proceduralsky_get_sun_latitude = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_latitude')
  bind_proceduralsky_get_sun_longitude = api_core.godot_method_bind_get_method('ProceduralSky', 'get_sun_longitude')
  bind_proceduralsky_get_texture_size = api_core.godot_method_bind_get_method('ProceduralSky', 'get_texture_size')
  bind_proceduralsky_set_ground_bottom_color = api_core.godot_method_bind_get_method('ProceduralSky', 'set_ground_bottom_color')
  bind_proceduralsky_set_ground_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'set_ground_curve')
  bind_proceduralsky_set_ground_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'set_ground_energy')
  bind_proceduralsky_set_ground_horizon_color = api_core.godot_method_bind_get_method('ProceduralSky', 'set_ground_horizon_color')
  bind_proceduralsky_set_sky_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sky_curve')
  bind_proceduralsky_set_sky_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sky_energy')
  bind_proceduralsky_set_sky_horizon_color = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sky_horizon_color')
  bind_proceduralsky_set_sky_top_color = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sky_top_color')
  bind_proceduralsky_set_sun_angle_max = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_angle_max')
  bind_proceduralsky_set_sun_angle_min = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_angle_min')
  bind_proceduralsky_set_sun_color = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_color')
  bind_proceduralsky_set_sun_curve = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_curve')
  bind_proceduralsky_set_sun_energy = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_energy')
  bind_proceduralsky_set_sun_latitude = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_latitude')
  bind_proceduralsky_set_sun_longitude = api_core.godot_method_bind_get_method('ProceduralSky', 'set_sun_longitude')
  bind_proceduralsky_set_texture_size = api_core.godot_method_bind_get_method('ProceduralSky', 'set_texture_size')

############################Generated class###################################
cdef class ProceduralSky(Sky):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProceduralSky")())
##################################Generated Properties#########################################
  @property
  def ground_bottom_color(self): 
    return self.get_ground_bottom_color()
  @ground_bottom_color.setter 
  def ground_bottom_color(self,value): 
    self.set_ground_bottom_color(value)
  @property
  def ground_curve(self): 
    return self.get_ground_curve()
  @ground_curve.setter 
  def ground_curve(self,value): 
    self.set_ground_curve(value)
  @property
  def ground_energy(self): 
    return self.get_ground_energy()
  @ground_energy.setter 
  def ground_energy(self,value): 
    self.set_ground_energy(value)
  @property
  def ground_horizon_color(self): 
    return self.get_ground_horizon_color()
  @ground_horizon_color.setter 
  def ground_horizon_color(self,value): 
    self.set_ground_horizon_color(value)
  @property
  def sky_curve(self): 
    return self.get_sky_curve()
  @sky_curve.setter 
  def sky_curve(self,value): 
    self.set_sky_curve(value)
  @property
  def sky_energy(self): 
    return self.get_sky_energy()
  @sky_energy.setter 
  def sky_energy(self,value): 
    self.set_sky_energy(value)
  @property
  def sky_horizon_color(self): 
    return self.get_sky_horizon_color()
  @sky_horizon_color.setter 
  def sky_horizon_color(self,value): 
    self.set_sky_horizon_color(value)
  @property
  def sky_top_color(self): 
    return self.get_sky_top_color()
  @sky_top_color.setter 
  def sky_top_color(self,value): 
    self.set_sky_top_color(value)
  @property
  def sun_angle_max(self): 
    return self.get_sun_angle_max()
  @sun_angle_max.setter 
  def sun_angle_max(self,value): 
    self.set_sun_angle_max(value)
  @property
  def sun_angle_min(self): 
    return self.get_sun_angle_min()
  @sun_angle_min.setter 
  def sun_angle_min(self,value): 
    self.set_sun_angle_min(value)
  @property
  def sun_color(self): 
    return self.get_sun_color()
  @sun_color.setter 
  def sun_color(self,value): 
    self.set_sun_color(value)
  @property
  def sun_curve(self): 
    return self.get_sun_curve()
  @sun_curve.setter 
  def sun_curve(self,value): 
    self.set_sun_curve(value)
  @property
  def sun_energy(self): 
    return self.get_sun_energy()
  @sun_energy.setter 
  def sun_energy(self,value): 
    self.set_sun_energy(value)
  @property
  def sun_latitude(self): 
    return self.get_sun_latitude()
  @sun_latitude.setter 
  def sun_latitude(self,value): 
    self.set_sun_latitude(value)
  @property
  def sun_longitude(self): 
    return self.get_sun_longitude()
  @sun_longitude.setter 
  def sun_longitude(self,value): 
    self.set_sun_longitude(value)
  @property
  def texture_size(self): 
    return self.get_texture_size()
  @texture_size.setter 
  def texture_size(self,value): 
    self.set_texture_size(value)

##################################Generated Methods#########################################
  def  _thread_done(self, image):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky__thread_done,self.godot_owner,[NULL,],NULL)
  def  _update_sky(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky__update_sky,self.godot_owner,[NULL,],NULL)
  def  get_ground_bottom_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_ground_bottom_color,self.godot_owner,[NULL,],&ret)
  def  get_ground_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_ground_curve,self.godot_owner,[NULL,],&ret)
  def  get_ground_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_ground_energy,self.godot_owner,[NULL,],&ret)
  def  get_ground_horizon_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_ground_horizon_color,self.godot_owner,[NULL,],&ret)
  def  get_sky_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sky_curve,self.godot_owner,[NULL,],&ret)
  def  get_sky_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sky_energy,self.godot_owner,[NULL,],&ret)
  def  get_sky_horizon_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sky_horizon_color,self.godot_owner,[NULL,],&ret)
  def  get_sky_top_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sky_top_color,self.godot_owner,[NULL,],&ret)
  def  get_sun_angle_max(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_angle_max,self.godot_owner,[NULL,],&ret)
  def  get_sun_angle_min(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_angle_min,self.godot_owner,[NULL,],&ret)
  def  get_sun_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_color,self.godot_owner,[NULL,],&ret)
  def  get_sun_curve(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_curve,self.godot_owner,[NULL,],&ret)
  def  get_sun_energy(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_energy,self.godot_owner,[NULL,],&ret)
  def  get_sun_latitude(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_latitude,self.godot_owner,[NULL,],&ret)
  def  get_sun_longitude(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_sun_longitude,self.godot_owner,[NULL,],&ret)
  def  get_texture_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ProceduralSky::TextureSize ret
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_get_texture_size,self.godot_owner,[NULL,],&ret)
  def  set_ground_bottom_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_ground_bottom_color,self.godot_owner,[NULL,],NULL)
  def  set_ground_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_ground_curve,self.godot_owner,[NULL,],NULL)
  def  set_ground_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_ground_energy,self.godot_owner,[NULL,],NULL)
  def  set_ground_horizon_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_ground_horizon_color,self.godot_owner,[NULL,],NULL)
  def  set_sky_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sky_curve,self.godot_owner,[NULL,],NULL)
  def  set_sky_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sky_energy,self.godot_owner,[NULL,],NULL)
  def  set_sky_horizon_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sky_horizon_color,self.godot_owner,[NULL,],NULL)
  def  set_sky_top_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sky_top_color,self.godot_owner,[NULL,],NULL)
  def  set_sun_angle_max(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_angle_max,self.godot_owner,[NULL,],NULL)
  def  set_sun_angle_min(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_angle_min,self.godot_owner,[NULL,],NULL)
  def  set_sun_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_color,self.godot_owner,[NULL,],NULL)
  def  set_sun_curve(self, curve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_curve,self.godot_owner,[NULL,],NULL)
  def  set_sun_energy(self, energy):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_energy,self.godot_owner,[NULL,],NULL)
  def  set_sun_latitude(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_latitude,self.godot_owner,[NULL,],NULL)
  def  set_sun_longitude(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_sun_longitude,self.godot_owner,[NULL,],NULL)
  def  set_texture_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_proceduralsky_set_texture_size,self.godot_owner,[NULL,],NULL)
