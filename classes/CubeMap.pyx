
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
cimport classes.Image
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cubemap_get_flags
cdef godot_method_bind *bind_cubemap_get_height
cdef godot_method_bind *bind_cubemap_get_lossy_storage_quality
cdef godot_method_bind *bind_cubemap_get_side
cdef godot_method_bind *bind_cubemap_get_storage
cdef godot_method_bind *bind_cubemap_get_width
cdef godot_method_bind *bind_cubemap_set_flags
cdef godot_method_bind *bind_cubemap_set_lossy_storage_quality
cdef godot_method_bind *bind_cubemap_set_side
cdef godot_method_bind *bind_cubemap_set_storage
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cubemap_get_flags = api_core.godot_method_bind_get_method('CubeMap', 'get_flags')
  bind_cubemap_get_height = api_core.godot_method_bind_get_method('CubeMap', 'get_height')
  bind_cubemap_get_lossy_storage_quality = api_core.godot_method_bind_get_method('CubeMap', 'get_lossy_storage_quality')
  bind_cubemap_get_side = api_core.godot_method_bind_get_method('CubeMap', 'get_side')
  bind_cubemap_get_storage = api_core.godot_method_bind_get_method('CubeMap', 'get_storage')
  bind_cubemap_get_width = api_core.godot_method_bind_get_method('CubeMap', 'get_width')
  bind_cubemap_set_flags = api_core.godot_method_bind_get_method('CubeMap', 'set_flags')
  bind_cubemap_set_lossy_storage_quality = api_core.godot_method_bind_get_method('CubeMap', 'set_lossy_storage_quality')
  bind_cubemap_set_side = api_core.godot_method_bind_get_method('CubeMap', 'set_side')
  bind_cubemap_set_storage = api_core.godot_method_bind_get_method('CubeMap', 'set_storage')

############################Generated class###################################
cdef class CubeMap(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CubeMap")())
##################################Generated Properties#########################################
  @property
  def flags(self): 
    return self.get_flags()
  @flags.setter 
  def flags(self,value): 
    self.set_flags(value)
  @property
  def lossy_storage_quality(self): 
    return self.get_lossy_storage_quality()
  @lossy_storage_quality.setter 
  def lossy_storage_quality(self,value): 
    self.set_lossy_storage_quality(value)
  @property
  def storage_mode(self): 
    return self.get_storage_mode()
  @storage_mode.setter 
  def storage_mode(self,value): 
    self.set_storage_mode(value)

##################################Generated Methods#########################################
  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cubemap_get_flags,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cubemap_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lossy_storage_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cubemap_get_lossy_storage_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_side(self,  int side):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &side
    api_core.godot_method_bind_ptrcall(bind_cubemap_get_side,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_storage(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Storage* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cubemap_get_storage,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_cubemap_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_flags(self,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flags
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lossy_storage_quality(self,  float quality):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &quality
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_lossy_storage_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_side(self,  int side,  classes.Image.Image image):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &side
    args[1] = image.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_side,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_storage(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_cubemap_set_storage,self.godot_owner,args,NULL)
    hello('hallo2')
