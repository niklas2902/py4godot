
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Image
cimport classes.OpenSimplexNoise
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_noisetexture__generate_texture
cdef godot_method_bind *bind_noisetexture__queue_update
cdef godot_method_bind *bind_noisetexture__thread_done
cdef godot_method_bind *bind_noisetexture__update_texture
cdef godot_method_bind *bind_noisetexture_get_bump_strength
cdef godot_method_bind *bind_noisetexture_get_noise
cdef godot_method_bind *bind_noisetexture_get_seamless
cdef godot_method_bind *bind_noisetexture_is_normalmap
cdef godot_method_bind *bind_noisetexture_set_as_normalmap
cdef godot_method_bind *bind_noisetexture_set_bump_strength
cdef godot_method_bind *bind_noisetexture_set_height
cdef godot_method_bind *bind_noisetexture_set_noise
cdef godot_method_bind *bind_noisetexture_set_seamless
cdef godot_method_bind *bind_noisetexture_set_width
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_noisetexture__generate_texture = api_core.godot_method_bind_get_method('NoiseTexture', '_generate_texture')
  bind_noisetexture__queue_update = api_core.godot_method_bind_get_method('NoiseTexture', '_queue_update')
  bind_noisetexture__thread_done = api_core.godot_method_bind_get_method('NoiseTexture', '_thread_done')
  bind_noisetexture__update_texture = api_core.godot_method_bind_get_method('NoiseTexture', '_update_texture')
  bind_noisetexture_get_bump_strength = api_core.godot_method_bind_get_method('NoiseTexture', 'get_bump_strength')
  bind_noisetexture_get_noise = api_core.godot_method_bind_get_method('NoiseTexture', 'get_noise')
  bind_noisetexture_get_seamless = api_core.godot_method_bind_get_method('NoiseTexture', 'get_seamless')
  bind_noisetexture_is_normalmap = api_core.godot_method_bind_get_method('NoiseTexture', 'is_normalmap')
  bind_noisetexture_set_as_normalmap = api_core.godot_method_bind_get_method('NoiseTexture', 'set_as_normalmap')
  bind_noisetexture_set_bump_strength = api_core.godot_method_bind_get_method('NoiseTexture', 'set_bump_strength')
  bind_noisetexture_set_height = api_core.godot_method_bind_get_method('NoiseTexture', 'set_height')
  bind_noisetexture_set_noise = api_core.godot_method_bind_get_method('NoiseTexture', 'set_noise')
  bind_noisetexture_set_seamless = api_core.godot_method_bind_get_method('NoiseTexture', 'set_seamless')
  bind_noisetexture_set_width = api_core.godot_method_bind_get_method('NoiseTexture', 'set_width')

############################Generated class###################################
cdef class NoiseTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NoiseTexture")())
##################################Generated Properties#########################################
  @property
  def as_normalmap(self): 
    return self.get_as_normalmap()
  @as_normalmap.setter 
  def as_normalmap(self,value): 
    self.set_as_normalmap(value)
  @property
  def bump_strength(self): 
    return self.get_bump_strength()
  @bump_strength.setter 
  def bump_strength(self,value): 
    self.set_bump_strength(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def noise(self): 
    return self.get_noise()
  @noise.setter 
  def noise(self,value): 
    self.set_noise(value)
  @property
  def seamless(self): 
    return self.get_seamless()
  @seamless.setter 
  def seamless(self,value): 
    self.set_seamless(value)
  @property
  def width(self): 
    return self.get_width()
  @width.setter 
  def width(self,value): 
    self.set_width(value)

##################################Generated Methods#########################################
  def  _generate_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_noisetexture__generate_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _queue_update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_noisetexture__queue_update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _thread_done(self,  classes.Image.Image image):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = image.godot_owner
    api_core.godot_method_bind_ptrcall(bind_noisetexture__thread_done,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _update_texture(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_noisetexture__update_texture,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_bump_strength(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_noisetexture_get_bump_strength,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_noisetexture_get_noise,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_seamless(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_noisetexture_get_seamless,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_normalmap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_noisetexture_is_normalmap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_as_normalmap(self,  bool as_normalmap):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &as_normalmap
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_as_normalmap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bump_strength(self,  float bump_strength):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bump_strength
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_bump_strength,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_height(self,  int height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &height
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_noise(self,  classes.OpenSimplexNoise.OpenSimplexNoise noise):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = noise.godot_owner
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_noise,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_seamless(self,  bool seamless):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seamless
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_seamless,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_width(self,  int width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &width
    api_core.godot_method_bind_ptrcall(bind_noisetexture_set_width,self.godot_owner,args,NULL)
    hello('hallo2')
