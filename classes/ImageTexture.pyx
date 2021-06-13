
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
cimport classes.Image
cimport classes.Image
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_imagetexture__reload_hook
cdef godot_method_bind *bind_imagetexture_create
cdef godot_method_bind *bind_imagetexture_create_from_image
cdef godot_method_bind *bind_imagetexture_get_format
cdef godot_method_bind *bind_imagetexture_get_lossy_storage_quality
cdef godot_method_bind *bind_imagetexture_get_storage
cdef godot_method_bind *bind_imagetexture_load
cdef godot_method_bind *bind_imagetexture_set_data
cdef godot_method_bind *bind_imagetexture_set_lossy_storage_quality
cdef godot_method_bind *bind_imagetexture_set_size_override
cdef godot_method_bind *bind_imagetexture_set_storage
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_imagetexture__reload_hook = api_core.godot_method_bind_get_method('ImageTexture', '_reload_hook')
  bind_imagetexture_create = api_core.godot_method_bind_get_method('ImageTexture', 'create')
  bind_imagetexture_create_from_image = api_core.godot_method_bind_get_method('ImageTexture', 'create_from_image')
  bind_imagetexture_get_format = api_core.godot_method_bind_get_method('ImageTexture', 'get_format')
  bind_imagetexture_get_lossy_storage_quality = api_core.godot_method_bind_get_method('ImageTexture', 'get_lossy_storage_quality')
  bind_imagetexture_get_storage = api_core.godot_method_bind_get_method('ImageTexture', 'get_storage')
  bind_imagetexture_load = api_core.godot_method_bind_get_method('ImageTexture', 'load')
  bind_imagetexture_set_data = api_core.godot_method_bind_get_method('ImageTexture', 'set_data')
  bind_imagetexture_set_lossy_storage_quality = api_core.godot_method_bind_get_method('ImageTexture', 'set_lossy_storage_quality')
  bind_imagetexture_set_size_override = api_core.godot_method_bind_get_method('ImageTexture', 'set_size_override')
  bind_imagetexture_set_storage = api_core.godot_method_bind_get_method('ImageTexture', 'set_storage')

############################Generated class###################################
cdef class ImageTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ImageTexture")())
##################################Generated Properties#########################################
  @property
  def lossy_quality(self): 
    return self.get_lossy_quality()
  @lossy_quality.setter 
  def lossy_quality(self,value): 
    self.set_lossy_quality(value)
  @property
  def storage(self): 
    return self.get_storage()
  @storage.setter 
  def storage(self,value): 
    self.set_storage(value)

##################################Generated Methods#########################################
  def  _reload_hook(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_imagetexture__reload_hook,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create(self,  int width,  int height,  int format,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &width
    args[1] = &height
    args[2] = &format
    args[3] = &flags
    api_core.godot_method_bind_ptrcall(bind_imagetexture_create,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_from_image(self,  classes.Image.Image image,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = image.godot_owner
    args[1] = &flags
    api_core.godot_method_bind_ptrcall(bind_imagetexture_create_from_image,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.Image.Image_Format* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lossy_storage_quality(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_lossy_storage_quality,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_storage(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ImageTexture_Storage* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_storage,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_imagetexture_load,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_data(self,  classes.Image.Image image):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = image.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lossy_storage_quality(self,  float quality):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &quality
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_lossy_storage_quality,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size_override(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_size_override,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_storage(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_storage,self.godot_owner,args,NULL)
    hello('hallo2')
