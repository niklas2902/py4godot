
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
cimport classes.ARVRInterface 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_mobilevrinterface_get_display_to_lens
cdef godot_method_bind *bind_mobilevrinterface_get_display_width
cdef godot_method_bind *bind_mobilevrinterface_get_eye_height
cdef godot_method_bind *bind_mobilevrinterface_get_iod
cdef godot_method_bind *bind_mobilevrinterface_get_k1
cdef godot_method_bind *bind_mobilevrinterface_get_k2
cdef godot_method_bind *bind_mobilevrinterface_get_oversample
cdef godot_method_bind *bind_mobilevrinterface_set_display_to_lens
cdef godot_method_bind *bind_mobilevrinterface_set_display_width
cdef godot_method_bind *bind_mobilevrinterface_set_eye_height
cdef godot_method_bind *bind_mobilevrinterface_set_iod
cdef godot_method_bind *bind_mobilevrinterface_set_k1
cdef godot_method_bind *bind_mobilevrinterface_set_k2
cdef godot_method_bind *bind_mobilevrinterface_set_oversample
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_mobilevrinterface_get_display_to_lens = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_display_to_lens')
  bind_mobilevrinterface_get_display_width = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_display_width')
  bind_mobilevrinterface_get_eye_height = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_eye_height')
  bind_mobilevrinterface_get_iod = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_iod')
  bind_mobilevrinterface_get_k1 = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_k1')
  bind_mobilevrinterface_get_k2 = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_k2')
  bind_mobilevrinterface_get_oversample = api_core.godot_method_bind_get_method('MobileVRInterface', 'get_oversample')
  bind_mobilevrinterface_set_display_to_lens = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_display_to_lens')
  bind_mobilevrinterface_set_display_width = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_display_width')
  bind_mobilevrinterface_set_eye_height = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_eye_height')
  bind_mobilevrinterface_set_iod = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_iod')
  bind_mobilevrinterface_set_k1 = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_k1')
  bind_mobilevrinterface_set_k2 = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_k2')
  bind_mobilevrinterface_set_oversample = api_core.godot_method_bind_get_method('MobileVRInterface', 'set_oversample')

############################Generated class###################################
cdef class MobileVRInterface(classes.ARVRInterface.ARVRInterface):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MobileVRInterface")())
##################################Generated Properties#########################################
  @property
  def display_to_lens(self): 
    return self.get_display_to_lens()
  @display_to_lens.setter 
  def display_to_lens(self,value): 
    self.set_display_to_lens(value)
  @property
  def display_width(self): 
    return self.get_display_width()
  @display_width.setter 
  def display_width(self,value): 
    self.set_display_width(value)
  @property
  def eye_height(self): 
    return self.get_eye_height()
  @eye_height.setter 
  def eye_height(self,value): 
    self.set_eye_height(value)
  @property
  def iod(self): 
    return self.get_iod()
  @iod.setter 
  def iod(self,value): 
    self.set_iod(value)
  @property
  def k1(self): 
    return self.get_k1()
  @k1.setter 
  def k1(self,value): 
    self.set_k1(value)
  @property
  def k2(self): 
    return self.get_k2()
  @k2.setter 
  def k2(self,value): 
    self.set_k2(value)
  @property
  def oversample(self): 
    return self.get_oversample()
  @oversample.setter 
  def oversample(self,value): 
    self.set_oversample(value)

##################################Generated Methods#########################################
  def  get_display_to_lens(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_display_to_lens,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_display_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_display_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_eye_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_eye_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_iod(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_iod,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_k1(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_k1,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_k2(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_k2,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_oversample(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_get_oversample,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_display_to_lens(self,  float display_to_lens):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &display_to_lens
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_display_to_lens,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_display_width(self,  float display_width):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &display_width
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_display_width,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_eye_height(self,  float eye_height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &eye_height
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_eye_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_iod(self,  float iod):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &iod
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_iod,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_k1(self,  float k):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &k
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_k1,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_k2(self,  float k):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &k
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_k2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_oversample(self,  float oversample):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &oversample
    api_core.godot_method_bind_ptrcall(bind_mobilevrinterface_set_oversample,self.godot_owner,args,NULL)
    hello('hallo2')
