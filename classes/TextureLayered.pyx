
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
cimport classes.Resource 

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
cdef class TextureLayered(classes.Resource.Resource):
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

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_data(self,  Dictionary data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_texturelayered__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create(self,  int width,  int height,  int depth,  int format,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &width
    args[1] = &height
    args[2] = &depth
    args[3] = &format
    args[4] = &flags
    api_core.godot_method_bind_ptrcall(bind_texturelayered_create,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_depth,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_flags(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_flags,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.Image.Image_Format* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_layer_data(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_layer_data,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_width(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturelayered_get_width,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_data_partial(self,  classes.Image.Image image,  int x_offset,  int y_offset,  int layer,  int mipmap):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = image.godot_owner
    args[1] = &x_offset
    args[2] = &y_offset
    args[3] = &layer
    args[4] = &mipmap
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_data_partial,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flags(self,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flags
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_flags,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_layer_data(self,  classes.Image.Image image,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = image.godot_owner
    args[1] = &layer
    api_core.godot_method_bind_ptrcall(bind_texturelayered_set_layer_data,self.godot_owner,args,NULL)
    hello('hallo2')
