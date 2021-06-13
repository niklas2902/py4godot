
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
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvranchor_get_anchor_id
cdef godot_method_bind *bind_arvranchor_get_anchor_name
cdef godot_method_bind *bind_arvranchor_get_is_active
cdef godot_method_bind *bind_arvranchor_get_mesh
cdef godot_method_bind *bind_arvranchor_get_plane
cdef godot_method_bind *bind_arvranchor_get_size
cdef godot_method_bind *bind_arvranchor_set_anchor_id
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvranchor_get_anchor_id = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_anchor_id')
  bind_arvranchor_get_anchor_name = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_anchor_name')
  bind_arvranchor_get_is_active = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_is_active')
  bind_arvranchor_get_mesh = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_mesh')
  bind_arvranchor_get_plane = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_plane')
  bind_arvranchor_get_size = api_core.godot_method_bind_get_method('ARVRAnchor', 'get_size')
  bind_arvranchor_set_anchor_id = api_core.godot_method_bind_get_method('ARVRAnchor', 'set_anchor_id')

############################Generated class###################################
cdef class ARVRAnchor(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVRAnchor")())
##################################Generated Properties#########################################
  @property
  def anchor_id(self): 
    return self.get_anchor_id()
  @anchor_id.setter 
  def anchor_id(self,value): 
    self.set_anchor_id(value)

##################################Generated Methods#########################################
  def  get_anchor_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_anchor_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_anchor_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_anchor_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_plane(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_plane* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_plane,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Plane.new_static(dereference(ret))

  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_arvranchor_get_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  set_anchor_id(self,  int anchor_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anchor_id
    api_core.godot_method_bind_ptrcall(bind_arvranchor_set_anchor_id,self.godot_owner,args,NULL)
    hello('hallo2')
