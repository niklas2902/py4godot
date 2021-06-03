
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
cimport classes.VisualShaderNodeUniform 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodetextureuniform_get_color_default
cdef godot_method_bind *bind_visualshadernodetextureuniform_get_texture_type
cdef godot_method_bind *bind_visualshadernodetextureuniform_set_color_default
cdef godot_method_bind *bind_visualshadernodetextureuniform_set_texture_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodetextureuniform_get_color_default = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'get_color_default')
  bind_visualshadernodetextureuniform_get_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'get_texture_type')
  bind_visualshadernodetextureuniform_set_color_default = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'set_color_default')
  bind_visualshadernodetextureuniform_set_texture_type = api_core.godot_method_bind_get_method('VisualShaderNodeTextureUniform', 'set_texture_type')

############################Generated class###################################
cdef class VisualShaderNodeTextureUniform(classes.VisualShaderNodeUniform.VisualShaderNodeUniform):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeTextureUniform")())
##################################Generated Properties#########################################
  @property
  def color_default(self): 
    return self.get_color_default()
  @color_default.setter 
  def color_default(self,value): 
    self.set_color_default(value)
  @property
  def texture_type(self): 
    return self.get_texture_type()
  @texture_type.setter 
  def texture_type(self,value): 
    self.set_texture_type(value)

##################################Generated Methods#########################################
  def  get_color_default(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ColorDefault* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_get_color_default,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TextureType* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_get_texture_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_color_default(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_set_color_default,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture_type(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetextureuniform_set_texture_type,self.godot_owner,args,NULL)
    hello('hallo2')
