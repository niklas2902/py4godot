from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class MeshLibrary(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshLibrary")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_clear,self.godot_owner,[NULL,],NULL)
  def  create_item(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_create_item,self.godot_owner,[NULL,],NULL)
  def  find_item_by_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_find_item_by_name,self.godot_owner,[NULL,],&ret)
  def  get_item_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_list,self.godot_owner,[NULL,],&ret)
  def  get_item_mesh(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_mesh,self.godot_owner,[NULL,],&ret)
  def  get_item_name(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_name,self.godot_owner,[NULL,],&ret)
  def  get_item_navmesh(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef NavigationMesh ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_navmesh,self.godot_owner,[NULL,],&ret)
  def  get_item_navmesh_transform(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_navmesh_transform,self.godot_owner,[NULL,],&ret)
  def  get_item_preview(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_preview,self.godot_owner,[NULL,],&ret)
  def  get_item_shapes(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_item_shapes,self.godot_owner,[NULL,],&ret)
  def  get_last_unused_item_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_get_last_unused_item_id,self.godot_owner,[NULL,],&ret)
  def  remove_item(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_remove_item,self.godot_owner,[NULL,],NULL)
  def  set_item_mesh(self, idmesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_mesh,self.godot_owner,[NULL,],NULL)
  def  set_item_name(self, idname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_name,self.godot_owner,[NULL,],NULL)
  def  set_item_navmesh(self, idnavmesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_navmesh,self.godot_owner,[NULL,],NULL)
  def  set_item_navmesh_transform(self, idnavmesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_navmesh_transform,self.godot_owner,[NULL,],NULL)
  def  set_item_preview(self, idtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_preview,self.godot_owner,[NULL,],NULL)
  def  set_item_shapes(self, idshapes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshlibrary_set_item_shapes,self.godot_owner,[NULL,],NULL)
