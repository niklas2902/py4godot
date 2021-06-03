
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
cimport classes.MultiMesh
cimport classes.Texture
cimport classes.Texture
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_multimeshinstance2d_get_multimesh
cdef godot_method_bind *bind_multimeshinstance2d_get_normal_map
cdef godot_method_bind *bind_multimeshinstance2d_get_texture
cdef godot_method_bind *bind_multimeshinstance2d_set_multimesh
cdef godot_method_bind *bind_multimeshinstance2d_set_normal_map
cdef godot_method_bind *bind_multimeshinstance2d_set_texture
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_multimeshinstance2d_get_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_multimesh')
  bind_multimeshinstance2d_get_normal_map = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_normal_map')
  bind_multimeshinstance2d_get_texture = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_texture')
  bind_multimeshinstance2d_set_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_multimesh')
  bind_multimeshinstance2d_set_normal_map = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_normal_map')
  bind_multimeshinstance2d_set_texture = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_texture')

############################Generated class###################################
cdef class MultiMeshInstance2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MultiMeshInstance2D")())
##################################Generated Properties#########################################
  @property
  def multimesh(self): 
    return self.get_multimesh()
  @multimesh.setter 
  def multimesh(self,value): 
    self.set_multimesh(value)
  @property
  def normal_map(self): 
    return self.get_normal_map()
  @normal_map.setter 
  def normal_map(self,value): 
    self.set_normal_map(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)

##################################Generated Methods#########################################
  def  get_multimesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_multimesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_normal_map,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_multimesh(self,  classes.MultiMesh.MultiMesh multimesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = multimesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_multimesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_map(self,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_normal_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
