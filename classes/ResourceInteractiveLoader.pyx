
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
cdef godot_method_bind *bind_resourceinteractiveloader_get_resource
cdef godot_method_bind *bind_resourceinteractiveloader_get_stage
cdef godot_method_bind *bind_resourceinteractiveloader_get_stage_count
cdef godot_method_bind *bind_resourceinteractiveloader_poll
cdef godot_method_bind *bind_resourceinteractiveloader_wait
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourceinteractiveloader_get_resource = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_resource')
  bind_resourceinteractiveloader_get_stage = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_stage')
  bind_resourceinteractiveloader_get_stage_count = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_stage_count')
  bind_resourceinteractiveloader_poll = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'poll')
  bind_resourceinteractiveloader_wait = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'wait')

############################Generated class###################################
cdef class ResourceInteractiveLoader(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourceInteractiveLoader")())
##################################Generated Methods#########################################
  def  get_resource(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_resource,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_stage(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_stage,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stage_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_stage_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_poll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  wait(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_wait,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

