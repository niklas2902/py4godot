
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
cimport classes.Mesh
cimport classes.NavigationMesh
cimport classes.Texture
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshlibrary_clear
cdef godot_method_bind *bind_meshlibrary_create_item
cdef godot_method_bind *bind_meshlibrary_find_item_by_name
cdef godot_method_bind *bind_meshlibrary_get_item_list
cdef godot_method_bind *bind_meshlibrary_get_item_mesh
cdef godot_method_bind *bind_meshlibrary_get_item_name
cdef godot_method_bind *bind_meshlibrary_get_item_navmesh
cdef godot_method_bind *bind_meshlibrary_get_item_navmesh_transform
cdef godot_method_bind *bind_meshlibrary_get_item_preview
cdef godot_method_bind *bind_meshlibrary_get_item_shapes
cdef godot_method_bind *bind_meshlibrary_get_last_unused_item_id
cdef godot_method_bind *bind_meshlibrary_remove_item
cdef godot_method_bind *bind_meshlibrary_set_item_mesh
cdef godot_method_bind *bind_meshlibrary_set_item_name
cdef godot_method_bind *bind_meshlibrary_set_item_navmesh
cdef godot_method_bind *bind_meshlibrary_set_item_navmesh_transform
cdef godot_method_bind *bind_meshlibrary_set_item_preview
cdef godot_method_bind *bind_meshlibrary_set_item_shapes
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshlibrary_clear = api_core.godot_method_bind_get_method('MeshLibrary', 'clear')
  bind_meshlibrary_create_item = api_core.godot_method_bind_get_method('MeshLibrary', 'create_item')
  bind_meshlibrary_find_item_by_name = api_core.godot_method_bind_get_method('MeshLibrary', 'find_item_by_name')
  bind_meshlibrary_get_item_list = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_list')
  bind_meshlibrary_get_item_mesh = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_mesh')
  bind_meshlibrary_get_item_name = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_name')
  bind_meshlibrary_get_item_navmesh = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_navmesh')
  bind_meshlibrary_get_item_navmesh_transform = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_navmesh_transform')
  bind_meshlibrary_get_item_preview = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_preview')
  bind_meshlibrary_get_item_shapes = api_core.godot_method_bind_get_method('MeshLibrary', 'get_item_shapes')
  bind_meshlibrary_get_last_unused_item_id = api_core.godot_method_bind_get_method('MeshLibrary', 'get_last_unused_item_id')
  bind_meshlibrary_remove_item = api_core.godot_method_bind_get_method('MeshLibrary', 'remove_item')
  bind_meshlibrary_set_item_mesh = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_mesh')
  bind_meshlibrary_set_item_name = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_name')
  bind_meshlibrary_set_item_navmesh = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_navmesh')
  bind_meshlibrary_set_item_navmesh_transform = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_navmesh_transform')
  bind_meshlibrary_set_item_preview = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_preview')
  bind_meshlibrary_set_item_shapes = api_core.godot_method_bind_get_method('MeshLibrary', 'set_item_shapes')

############################Generated class###################################
cdef class MeshLibrary(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshLibrary")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshlibrary_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_item(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_create_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_item_by_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_find_item_by_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_item_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_item_mesh(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_mesh,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_name(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_item_navmesh(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_navmesh,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_navmesh_transform(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_navmesh_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_item_preview(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_preview,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_item_shapes(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_shapes,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_last_unused_item_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_last_unused_item_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_item(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_remove_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_mesh(self,  int id,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_name(self,  int id,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_navmesh(self,  int id,  classes.NavigationMesh.NavigationMesh navmesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = navmesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_navmesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_navmesh_transform(self,  int id,  Transform navmesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &navmesh._native
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_navmesh_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_preview(self,  int id,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_preview,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_item_shapes(self,  int id,  Array shapes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &shapes._native
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
