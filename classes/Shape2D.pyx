
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
cimport classes.Shape2D
cimport classes.Shape2D
cimport classes.Shape2D
cimport classes.Shape2D
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_shape2d_collide
cdef godot_method_bind *bind_shape2d_collide_and_get_contacts
cdef godot_method_bind *bind_shape2d_collide_with_motion
cdef godot_method_bind *bind_shape2d_collide_with_motion_and_get_contacts
cdef godot_method_bind *bind_shape2d_get_custom_solver_bias
cdef godot_method_bind *bind_shape2d_set_custom_solver_bias
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_shape2d_collide = api_core.godot_method_bind_get_method('Shape2D', 'collide')
  bind_shape2d_collide_and_get_contacts = api_core.godot_method_bind_get_method('Shape2D', 'collide_and_get_contacts')
  bind_shape2d_collide_with_motion = api_core.godot_method_bind_get_method('Shape2D', 'collide_with_motion')
  bind_shape2d_collide_with_motion_and_get_contacts = api_core.godot_method_bind_get_method('Shape2D', 'collide_with_motion_and_get_contacts')
  bind_shape2d_get_custom_solver_bias = api_core.godot_method_bind_get_method('Shape2D', 'get_custom_solver_bias')
  bind_shape2d_set_custom_solver_bias = api_core.godot_method_bind_get_method('Shape2D', 'set_custom_solver_bias')

############################Generated class###################################
cdef class Shape2D(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Shape2D")())
##################################Generated Properties#########################################
  @property
  def custom_solver_bias(self): 
    return self.get_custom_solver_bias()
  @custom_solver_bias.setter 
  def custom_solver_bias(self,value): 
    self.set_custom_solver_bias(value)

##################################Generated Methods#########################################
  def  collide(self,  Transform2D local_xform,  classes.Shape2D.Shape2D with_shape,  Transform2D shape_xform):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &local_xform._native
    args[1] = with_shape.godot_owner
    args[2] = &shape_xform._native
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  collide_and_get_contacts(self,  Transform2D local_xform,  classes.Shape2D.Shape2D with_shape,  Transform2D shape_xform):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[3]

    args[0] = &local_xform._native
    args[1] = with_shape.godot_owner
    args[2] = &shape_xform._native
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_and_get_contacts,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  collide_with_motion(self,  Transform2D local_xform,  Vector2 local_motion,  classes.Shape2D.Shape2D with_shape,  Transform2D shape_xform,  Vector2 shape_motion):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[5]

    args[0] = &local_xform._native
    args[1] = &local_motion._native
    args[2] = with_shape.godot_owner
    args[3] = &shape_xform._native
    args[4] = &shape_motion._native
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_with_motion,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  collide_with_motion_and_get_contacts(self,  Transform2D local_xform,  Vector2 local_motion,  classes.Shape2D.Shape2D with_shape,  Transform2D shape_xform,  Vector2 shape_motion):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[5]

    args[0] = &local_xform._native
    args[1] = &local_motion._native
    args[2] = with_shape.godot_owner
    args[3] = &shape_xform._native
    args[4] = &shape_motion._native
    api_core.godot_method_bind_ptrcall(bind_shape2d_collide_with_motion_and_get_contacts,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_custom_solver_bias(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_shape2d_get_custom_solver_bias,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_custom_solver_bias(self,  float bias):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bias
    api_core.godot_method_bind_ptrcall(bind_shape2d_set_custom_solver_bias,self.godot_owner,args,NULL)
    hello('hallo2')
