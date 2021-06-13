
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
cimport classes.Texture
cimport classes.VisualShaderNode 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodetexture_get_source
cdef godot_method_bind *bind_visualshadernodetexture_get_texture
cdef godot_method_bind *bind_visualshadernodetexture_get_texture_type
cdef godot_method_bind *bind_visualshadernodetexture_set_source
cdef godot_method_bind *bind_visualshadernodetexture_set_texture
cdef godot_method_bind *bind_visualshadernodetexture_set_texture_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodetexture_get_source = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_source')
  bind_visualshadernodetexture_get_texture = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_texture')
  bind_visualshadernodetexture_get_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'get_texture_type')
  bind_visualshadernodetexture_set_source = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_source')
  bind_visualshadernodetexture_set_texture = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_texture')
  bind_visualshadernodetexture_set_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTexture', 'set_texture_type')

############################Generated class###################################
cdef class VisualShaderNodeTexture(classes.VisualShaderNode.VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeTexture")())
##################################Generated Properties#########################################
  @property
  def source(self): 
    return self.get_source()
  @source.setter 
  def source(self,value): 
    self.set_source(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def texture_type(self): 
    return self.get_texture_type()
  @texture_type.setter 
  def texture_type(self,value): 
    self.set_texture_type(value)

##################################Generated Methods#########################################
  def  get_source(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualShaderNodeTexture_Source* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_source,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_texture_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef VisualShaderNodeTexture_TextureType* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_get_texture_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_source(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_source,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = value.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture_type(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetexture_set_texture_type,self.godot_owner,args,NULL)
    hello('hallo2')
