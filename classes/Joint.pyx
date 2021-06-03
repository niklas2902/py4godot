
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
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_joint_get_exclude_nodes_from_collision
cdef godot_method_bind *bind_joint_get_node_a
cdef godot_method_bind *bind_joint_get_node_b
cdef godot_method_bind *bind_joint_get_solver_priority
cdef godot_method_bind *bind_joint_set_exclude_nodes_from_collision
cdef godot_method_bind *bind_joint_set_node_a
cdef godot_method_bind *bind_joint_set_node_b
cdef godot_method_bind *bind_joint_set_solver_priority
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_joint_get_exclude_nodes_from_collision = api_core.godot_method_bind_get_method('Joint', 'get_exclude_nodes_from_collision')
  bind_joint_get_node_a = api_core.godot_method_bind_get_method('Joint', 'get_node_a')
  bind_joint_get_node_b = api_core.godot_method_bind_get_method('Joint', 'get_node_b')
  bind_joint_get_solver_priority = api_core.godot_method_bind_get_method('Joint', 'get_solver_priority')
  bind_joint_set_exclude_nodes_from_collision = api_core.godot_method_bind_get_method('Joint', 'set_exclude_nodes_from_collision')
  bind_joint_set_node_a = api_core.godot_method_bind_get_method('Joint', 'set_node_a')
  bind_joint_set_node_b = api_core.godot_method_bind_get_method('Joint', 'set_node_b')
  bind_joint_set_solver_priority = api_core.godot_method_bind_get_method('Joint', 'set_solver_priority')

############################Generated class###################################
cdef class Joint(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Joint")())
##################################Generated Properties#########################################
  @property
  def collision_exclude_nodes(self): 
    return self.get_collision_exclude_nodes()
  @collision_exclude_nodes.setter 
  def collision_exclude_nodes(self,value): 
    self.set_collision_exclude_nodes(value)
  @property
  def nodes_node_a(self): 
    return self.get_nodes_node_a()
  @nodes_node_a.setter 
  def nodes_node_a(self,value): 
    self.set_nodes_node_a(value)
  @property
  def nodes_node_b(self): 
    return self.get_nodes_node_b()
  @nodes_node_b.setter 
  def nodes_node_b(self,value): 
    self.set_nodes_node_b(value)
  @property
  def solver_priority(self): 
    return self.get_solver_priority()
  @solver_priority.setter 
  def solver_priority(self,value): 
    self.set_solver_priority(value)

##################################Generated Methods#########################################
  def  get_exclude_nodes_from_collision(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_joint_get_exclude_nodes_from_collision,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_node_a(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_joint_get_node_a,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_node_b(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_joint_get_node_b,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_solver_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_joint_get_solver_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_exclude_nodes_from_collision(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_joint_set_exclude_nodes_from_collision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_a(self,  NodePath node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &node._native
    api_core.godot_method_bind_ptrcall(bind_joint_set_node_a,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_b(self,  NodePath node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &node._native
    api_core.godot_method_bind_ptrcall(bind_joint_set_node_b,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_solver_priority(self,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &priority
    api_core.godot_method_bind_ptrcall(bind_joint_set_solver_priority,self.godot_owner,args,NULL)
    hello('hallo2')
