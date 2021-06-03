
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
cimport classes.Mesh
cimport classes.Mesh
cimport classes.Mesh 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arraymesh_add_blend_shape
cdef godot_method_bind *bind_arraymesh_add_surface_from_arrays
cdef godot_method_bind *bind_arraymesh_clear_blend_shapes
cdef godot_method_bind *bind_arraymesh_get_blend_shape_count
cdef godot_method_bind *bind_arraymesh_get_blend_shape_mode
cdef godot_method_bind *bind_arraymesh_get_blend_shape_name
cdef godot_method_bind *bind_arraymesh_get_custom_aabb
cdef godot_method_bind *bind_arraymesh_lightmap_unwrap
cdef godot_method_bind *bind_arraymesh_regen_normalmaps
cdef godot_method_bind *bind_arraymesh_set_blend_shape_mode
cdef godot_method_bind *bind_arraymesh_set_custom_aabb
cdef godot_method_bind *bind_arraymesh_surface_find_by_name
cdef godot_method_bind *bind_arraymesh_surface_get_array_index_len
cdef godot_method_bind *bind_arraymesh_surface_get_array_len
cdef godot_method_bind *bind_arraymesh_surface_get_format
cdef godot_method_bind *bind_arraymesh_surface_get_name
cdef godot_method_bind *bind_arraymesh_surface_get_primitive_type
cdef godot_method_bind *bind_arraymesh_surface_remove
cdef godot_method_bind *bind_arraymesh_surface_set_name
cdef godot_method_bind *bind_arraymesh_surface_update_region
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arraymesh_add_blend_shape = api_core.godot_method_bind_get_method('ArrayMesh', 'add_blend_shape')
  bind_arraymesh_add_surface_from_arrays = api_core.godot_method_bind_get_method('ArrayMesh', 'add_surface_from_arrays')
  bind_arraymesh_clear_blend_shapes = api_core.godot_method_bind_get_method('ArrayMesh', 'clear_blend_shapes')
  bind_arraymesh_get_blend_shape_count = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_count')
  bind_arraymesh_get_blend_shape_mode = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_mode')
  bind_arraymesh_get_blend_shape_name = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_name')
  bind_arraymesh_get_custom_aabb = api_core.godot_method_bind_get_method('ArrayMesh', 'get_custom_aabb')
  bind_arraymesh_lightmap_unwrap = api_core.godot_method_bind_get_method('ArrayMesh', 'lightmap_unwrap')
  bind_arraymesh_regen_normalmaps = api_core.godot_method_bind_get_method('ArrayMesh', 'regen_normalmaps')
  bind_arraymesh_set_blend_shape_mode = api_core.godot_method_bind_get_method('ArrayMesh', 'set_blend_shape_mode')
  bind_arraymesh_set_custom_aabb = api_core.godot_method_bind_get_method('ArrayMesh', 'set_custom_aabb')
  bind_arraymesh_surface_find_by_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_find_by_name')
  bind_arraymesh_surface_get_array_index_len = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_array_index_len')
  bind_arraymesh_surface_get_array_len = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_array_len')
  bind_arraymesh_surface_get_format = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_format')
  bind_arraymesh_surface_get_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_name')
  bind_arraymesh_surface_get_primitive_type = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_primitive_type')
  bind_arraymesh_surface_remove = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_remove')
  bind_arraymesh_surface_set_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_set_name')
  bind_arraymesh_surface_update_region = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_update_region')

############################Generated class###################################
cdef class ArrayMesh(classes.Mesh.Mesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ArrayMesh")())
##################################Generated Properties#########################################
  @property
  def blend_shape_mode(self): 
    return self.get_blend_shape_mode()
  @blend_shape_mode.setter 
  def blend_shape_mode(self,value): 
    self.set_blend_shape_mode(value)
  @property
  def custom_aabb(self): 
    return self.get_custom_aabb()
  @custom_aabb.setter 
  def custom_aabb(self,value): 
    self.set_custom_aabb(value)

##################################Generated Methods#########################################
  def  add_blend_shape(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_arraymesh_add_blend_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_surface_from_arrays(self,  int primitive,  Array arrays,  Array blend_shapes,  int compress_flags):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &primitive
    args[1] = &arrays._native
    args[2] = &blend_shapes._native
    args[3] = &compress_flags
    api_core.godot_method_bind_ptrcall(bind_arraymesh_add_surface_from_arrays,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_blend_shapes(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_arraymesh_clear_blend_shapes,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_blend_shape_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_blend_shape_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.Mesh.BlendShapeMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_blend_shape_name(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_custom_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_custom_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  lightmap_unwrap(self,  Transform transform,  float texel_size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &transform._native
    args[1] = &texel_size
    api_core.godot_method_bind_ptrcall(bind_arraymesh_lightmap_unwrap,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  regen_normalmaps(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_arraymesh_regen_normalmaps,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_blend_shape_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_arraymesh_set_blend_shape_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_aabb(self,  AABB aabb):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &aabb._native
    api_core.godot_method_bind_ptrcall(bind_arraymesh_set_custom_aabb,self.godot_owner,args,NULL)
    hello('hallo2')
  def  surface_find_by_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_find_by_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  surface_get_array_index_len(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_array_index_len,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  surface_get_array_len(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_array_len,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  surface_get_format(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_format,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  surface_get_name(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  surface_get_primitive_type(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.Mesh.PrimitiveType* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_primitive_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  surface_remove(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_remove,self.godot_owner,args,NULL)
    hello('hallo2')
  def  surface_set_name(self,  int surf_idx,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &surf_idx
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  surface_update_region(self,  int surf_idx,  int offset,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &surf_idx
    args[1] = &offset
    args[2] = &data._native
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_update_region,self.godot_owner,args,NULL)
    hello('hallo2')
