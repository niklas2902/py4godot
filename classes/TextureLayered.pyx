from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_texturelayered__get_data
cdef godot_method_bind *bind_texturelayered__set_data
cdef godot_method_bind *bind_texturelayered_create
cdef godot_method_bind *bind_texturelayered_get_depth
cdef godot_method_bind *bind_texturelayered_get_flags
cdef godot_method_bind *bind_texturelayered_get_format
cdef godot_method_bind *bind_texturelayered_get_height
cdef godot_method_bind *bind_texturelayered_get_layer_data
cdef godot_method_bind *bind_texturelayered_get_width
cdef godot_method_bind *bind_texturelayered_set_data_partial
cdef godot_method_bind *bind_texturelayered_set_flags
cdef godot_method_bind *bind_texturelayered_set_layer_data
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_texturelayered__get_data = api_core.godot_method_bind_get_method('TextureLayered', '_get_data')
  bind_texturelayered__set_data = api_core.godot_method_bind_get_method('TextureLayered', '_set_data')
  bind_texturelayered_create = api_core.godot_method_bind_get_method('TextureLayered', 'create')
  bind_texturelayered_get_depth = api_core.godot_method_bind_get_method('TextureLayered', 'get_depth')
  bind_texturelayered_get_flags = api_core.godot_method_bind_get_method('TextureLayered', 'get_flags')
  bind_texturelayered_get_format = api_core.godot_method_bind_get_method('TextureLayered', 'get_format')
  bind_texturelayered_get_height = api_core.godot_method_bind_get_method('TextureLayered', 'get_height')
  bind_texturelayered_get_layer_data = api_core.godot_method_bind_get_method('TextureLayered', 'get_layer_data')
  bind_texturelayered_get_width = api_core.godot_method_bind_get_method('TextureLayered', 'get_width')
  bind_texturelayered_set_data_partial = api_core.godot_method_bind_get_method('TextureLayered', 'set_data_partial')
  bind_texturelayered_set_flags = api_core.godot_method_bind_get_method('TextureLayered', 'set_flags')
  bind_texturelayered_set_layer_data = api_core.godot_method_bind_get_method('TextureLayered', 'set_layer_data')

############################Generated class###################################
cdef class TextureLayered(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextureLayered")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
  @property
  def flags(self): 
    return self.get_flags()
  @flags.setter 
  def flags(self,value): 
    self.set_flags(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered__get_data,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturelayered__set_data,self.godot_owner,[NULL,],NULL)
  def  create(self, widthheightdepthformatflags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturelayered_create,self.godot_owner,[NULL,],NULL)
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_depth,self.godot_owner,[NULL,],&ret)
  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_flags,self.godot_owner,[NULL,],&ret)
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Image::Format ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_format,self.godot_owner,[NULL,],&ret)
  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_height,self.godot_owner,[NULL,],&ret)
  def  get_layer_data(self, layer):
    cdef godot_object *_owner = self.godot_owner
    cdef Image ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_layer_data,self.godot_owner,[NULL,],&ret)
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_width,self.godot_owner,[NULL,],&ret)
  def  set_data_partial(self, imagex_offsety_offsetlayermipmap):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_data_partial,self.godot_owner,[NULL,],NULL)
  def  set_flags(self, flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_flags,self.godot_owner,[NULL,],NULL)
  def  set_layer_data(self, imagelayer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_layer_data,self.godot_owner,[NULL,],NULL)
