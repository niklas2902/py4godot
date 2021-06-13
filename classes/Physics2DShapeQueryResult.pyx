
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2dshapequeryresult_get_result_count
cdef godot_method_bind *bind_physics2dshapequeryresult_get_result_object
cdef godot_method_bind *bind_physics2dshapequeryresult_get_result_object_id
cdef godot_method_bind *bind_physics2dshapequeryresult_get_result_object_shape
cdef godot_method_bind *bind_physics2dshapequeryresult_get_result_rid
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2dshapequeryresult_get_result_count = api_core.godot_method_bind_get_method('Physics2DShapeQueryResult', 'get_result_count')
  bind_physics2dshapequeryresult_get_result_object = api_core.godot_method_bind_get_method('Physics2DShapeQueryResult', 'get_result_object')
  bind_physics2dshapequeryresult_get_result_object_id = api_core.godot_method_bind_get_method('Physics2DShapeQueryResult', 'get_result_object_id')
  bind_physics2dshapequeryresult_get_result_object_shape = api_core.godot_method_bind_get_method('Physics2DShapeQueryResult', 'get_result_object_shape')
  bind_physics2dshapequeryresult_get_result_rid = api_core.godot_method_bind_get_method('Physics2DShapeQueryResult', 'get_result_rid')

############################Generated class###################################
cdef class Physics2DShapeQueryResult(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DShapeQueryResult")())
##################################Generated Methods#########################################
  def  get_result_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryresult_get_result_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_result_object(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryresult_get_result_object,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_result_object_id(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryresult_get_result_object_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_result_object_shape(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryresult_get_result_object_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_result_rid(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryresult_get_result_rid,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

