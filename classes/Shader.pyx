
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shader_get_code
cdef godot_method_bind *bind_shader_get_default_texture_param
cdef godot_method_bind *bind_shader_get_mode
cdef godot_method_bind *bind_shader_has_param
cdef godot_method_bind *bind_shader_set_code
cdef godot_method_bind *bind_shader_set_default_texture_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shader_get_code = api_core.godot_method_bind_get_method('Shader', 'get_code')
  bind_shader_get_default_texture_param = api_core.godot_method_bind_get_method('Shader', 'get_default_texture_param')
  bind_shader_get_mode = api_core.godot_method_bind_get_method('Shader', 'get_mode')
  bind_shader_has_param = api_core.godot_method_bind_get_method('Shader', 'has_param')
  bind_shader_set_code = api_core.godot_method_bind_get_method('Shader', 'set_code')
  bind_shader_set_default_texture_param = api_core.godot_method_bind_get_method('Shader', 'set_default_texture_param')

############################Generated class###################################
cdef class Shader(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Shader")())
##################################Generated Properties#########################################
  @property
  def code(self): 
    return self.get_code()
  @code.setter 
  def code(self,value): 
    self.set_code(value)

##################################Generated Methods#########################################
  def  get_code(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shader_get_code,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_default_texture_param(self,  String param):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &param._native
    api_core.godot_method_bind_ptrcall(bind_shader_get_default_texture_param,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Shader_Mode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shader_get_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_param(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_shader_has_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_code(self,  String code):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &code._native
    api_core.godot_method_bind_ptrcall(bind_shader_set_code,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_default_texture_param(self,  String param,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param._native
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_shader_set_default_texture_param,self.godot_owner,args,NULL)
    hello('hallo2')
