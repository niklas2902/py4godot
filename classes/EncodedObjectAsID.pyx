
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
cdef godot_method_bind *bind_encodedobjectasid_get_object_id
cdef godot_method_bind *bind_encodedobjectasid_set_object_id
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_encodedobjectasid_get_object_id = api_core.godot_method_bind_get_method('EncodedObjectAsID', 'get_object_id')
  bind_encodedobjectasid_set_object_id = api_core.godot_method_bind_get_method('EncodedObjectAsID', 'set_object_id')

############################Generated class###################################
cdef class EncodedObjectAsID(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EncodedObjectAsID")())
##################################Generated Properties#########################################
  @property
  def object_id(self): 
    return self.get_object_id()
  @object_id.setter 
  def object_id(self,value): 
    self.set_object_id(value)

##################################Generated Methods#########################################
  def  get_object_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_encodedobjectasid_get_object_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_object_id(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_encodedobjectasid_set_object_id,self.godot_owner,args,NULL)
    hello('hallo2')
