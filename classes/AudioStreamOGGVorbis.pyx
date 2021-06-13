
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
cimport classes.AudioStream 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamoggvorbis_get_data
cdef godot_method_bind *bind_audiostreamoggvorbis_get_loop_offset
cdef godot_method_bind *bind_audiostreamoggvorbis_has_loop
cdef godot_method_bind *bind_audiostreamoggvorbis_set_data
cdef godot_method_bind *bind_audiostreamoggvorbis_set_loop
cdef godot_method_bind *bind_audiostreamoggvorbis_set_loop_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamoggvorbis_get_data = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'get_data')
  bind_audiostreamoggvorbis_get_loop_offset = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'get_loop_offset')
  bind_audiostreamoggvorbis_has_loop = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'has_loop')
  bind_audiostreamoggvorbis_set_data = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_data')
  bind_audiostreamoggvorbis_set_loop = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_loop')
  bind_audiostreamoggvorbis_set_loop_offset = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_loop_offset')

############################Generated class###################################
cdef class AudioStreamOGGVorbis(classes.AudioStream.AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamOGGVorbis")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def loop_offset(self): 
    return self.get_loop_offset()
  @loop_offset.setter 
  def loop_offset(self,value): 
    self.set_loop_offset(value)

##################################Generated Methods#########################################
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_loop_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_get_loop_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_has_loop,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_data(self,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_loop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop_offset(self,  float seconds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seconds
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_loop_offset,self.godot_owner,args,NULL)
    hello('hallo2')
