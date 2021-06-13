
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
cimport classes.Shader
cimport classes.Material 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shadermaterial__shader_changed
cdef godot_method_bind *bind_shadermaterial_get_shader
cdef godot_method_bind *bind_shadermaterial_get_shader_param
cdef godot_method_bind *bind_shadermaterial_property_can_revert
cdef godot_method_bind *bind_shadermaterial_property_get_revert
cdef godot_method_bind *bind_shadermaterial_set_shader
cdef godot_method_bind *bind_shadermaterial_set_shader_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shadermaterial__shader_changed = api_core.godot_method_bind_get_method('ShaderMaterial', '_shader_changed')
  bind_shadermaterial_get_shader = api_core.godot_method_bind_get_method('ShaderMaterial', 'get_shader')
  bind_shadermaterial_get_shader_param = api_core.godot_method_bind_get_method('ShaderMaterial', 'get_shader_param')
  bind_shadermaterial_property_can_revert = api_core.godot_method_bind_get_method('ShaderMaterial', 'property_can_revert')
  bind_shadermaterial_property_get_revert = api_core.godot_method_bind_get_method('ShaderMaterial', 'property_get_revert')
  bind_shadermaterial_set_shader = api_core.godot_method_bind_get_method('ShaderMaterial', 'set_shader')
  bind_shadermaterial_set_shader_param = api_core.godot_method_bind_get_method('ShaderMaterial', 'set_shader_param')

############################Generated class###################################
cdef class ShaderMaterial(classes.Material.Material):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ShaderMaterial")())
##################################Generated Properties#########################################
  @property
  def shader(self): 
    return self.get_shader()
  @shader.setter 
  def shader(self,value): 
    self.set_shader(value)

##################################Generated Methods#########################################
  def  _shader_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_shadermaterial__shader_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_shader(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shadermaterial_get_shader,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_shader_param(self,  String param):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &param._native
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_get_shader_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  property_can_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_property_can_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  property_get_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_property_get_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  set_shader(self,  classes.Shader.Shader shader):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = shader.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_set_shader,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shader_param(self,  String param,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_shadermaterial_set_shader_param,self.godot_owner,args,NULL)
    hello('hallo2')
