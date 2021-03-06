from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class ImageTexture(Texture):
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
  def  _reload_hook(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture__reload_hook,self.godot_owner,[NULL,],NULL)
  def  create(self, widthheightformatflags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_create,self.godot_owner,[NULL,],NULL)
  def  create_from_image(self, imageflags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_create_from_image,self.godot_owner,[NULL,],NULL)
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Image::Format ret
    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_format,self.godot_owner,[NULL,],&ret)
  def  get_lossy_storage_quality(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_lossy_storage_quality,self.godot_owner,[NULL,],&ret)
  def  get_storage(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ImageTexture::Storage ret
    api_core.godot_method_bind_ptrcall(bind_imagetexture_get_storage,self.godot_owner,[NULL,],&ret)
  def  load(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_imagetexture_load,self.godot_owner,[NULL,],&ret)
  def  set_data(self, image):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_data,self.godot_owner,[NULL,],NULL)
  def  set_lossy_storage_quality(self, quality):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_lossy_storage_quality,self.godot_owner,[NULL,],NULL)
  def  set_size_override(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_size_override,self.godot_owner,[NULL,],NULL)
  def  set_storage(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_imagetexture_set_storage,self.godot_owner,[NULL,],NULL)
