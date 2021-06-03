
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_hashingcontext_finish
cdef godot_method_bind *bind_hashingcontext_start
cdef godot_method_bind *bind_hashingcontext_update
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_hashingcontext_finish = api_core.godot_method_bind_get_method('HashingContext', 'finish')
  bind_hashingcontext_start = api_core.godot_method_bind_get_method('HashingContext', 'start')
  bind_hashingcontext_update = api_core.godot_method_bind_get_method('HashingContext', 'update')

############################Generated class###################################
cdef class HashingContext(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HashingContext")())
##################################Generated Methods#########################################
  def  finish(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_hashingcontext_finish,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  start(self,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &type
    api_core.godot_method_bind_ptrcall(bind_hashingcontext_start,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  update(self,  PoolByteArray chunk):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &chunk._native
    api_core.godot_method_bind_ptrcall(bind_hashingcontext_update,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

