
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
cimport classes.PackedScene
cimport classes.PackedScene
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_instanceplaceholder_create_instance
cdef godot_method_bind *bind_instanceplaceholder_get_instance_path
cdef godot_method_bind *bind_instanceplaceholder_get_stored_values
cdef godot_method_bind *bind_instanceplaceholder_replace_by_instance
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_instanceplaceholder_create_instance = api_core.godot_method_bind_get_method('InstancePlaceholder', 'create_instance')
  bind_instanceplaceholder_get_instance_path = api_core.godot_method_bind_get_method('InstancePlaceholder', 'get_instance_path')
  bind_instanceplaceholder_get_stored_values = api_core.godot_method_bind_get_method('InstancePlaceholder', 'get_stored_values')
  bind_instanceplaceholder_replace_by_instance = api_core.godot_method_bind_get_method('InstancePlaceholder', 'replace_by_instance')

############################Generated class###################################
cdef class InstancePlaceholder(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InstancePlaceholder")())
##################################Generated Methods#########################################
  def  create_instance(self,  bool replace,  classes.PackedScene.PackedScene custom_scene):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &replace
    args[1] = custom_scene.godot_owner
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_create_instance,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_instance_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_get_instance_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_stored_values(self,  bool with_order):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[1]

    args[0] = &with_order
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_get_stored_values,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  replace_by_instance(self,  classes.PackedScene.PackedScene custom_scene):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = custom_scene.godot_owner
    api_core.godot_method_bind_ptrcall(bind_instanceplaceholder_replace_by_instance,self.godot_owner,args,NULL)
    hello('hallo2')
