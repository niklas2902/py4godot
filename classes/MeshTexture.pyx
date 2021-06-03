
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
cimport classes.Texture
cimport classes.Mesh
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshtexture_get_base_texture
cdef godot_method_bind *bind_meshtexture_get_image_size
cdef godot_method_bind *bind_meshtexture_get_mesh
cdef godot_method_bind *bind_meshtexture_set_base_texture
cdef godot_method_bind *bind_meshtexture_set_image_size
cdef godot_method_bind *bind_meshtexture_set_mesh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshtexture_get_base_texture = api_core.godot_method_bind_get_method('MeshTexture', 'get_base_texture')
  bind_meshtexture_get_image_size = api_core.godot_method_bind_get_method('MeshTexture', 'get_image_size')
  bind_meshtexture_get_mesh = api_core.godot_method_bind_get_method('MeshTexture', 'get_mesh')
  bind_meshtexture_set_base_texture = api_core.godot_method_bind_get_method('MeshTexture', 'set_base_texture')
  bind_meshtexture_set_image_size = api_core.godot_method_bind_get_method('MeshTexture', 'set_image_size')
  bind_meshtexture_set_mesh = api_core.godot_method_bind_get_method('MeshTexture', 'set_mesh')

############################Generated class###################################
cdef class MeshTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshTexture")())
##################################Generated Properties#########################################
  @property
  def base_texture(self): 
    return self.get_base_texture()
  @base_texture.setter 
  def base_texture(self,value): 
    self.set_base_texture(value)
  @property
  def image_size(self): 
    return self.get_image_size()
  @image_size.setter 
  def image_size(self,value): 
    self.set_image_size(value)
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)

##################################Generated Methods#########################################
  def  get_base_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_base_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_image_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_image_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_base_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_base_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_image_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_image_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
