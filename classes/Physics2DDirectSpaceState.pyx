
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
cimport classes.Physics2DShapeQueryParameters
cimport classes.Physics2DShapeQueryParameters
cimport classes.Physics2DShapeQueryParameters
cimport classes.Physics2DShapeQueryParameters
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2ddirectspacestate_cast_motion
cdef godot_method_bind *bind_physics2ddirectspacestate_collide_shape
cdef godot_method_bind *bind_physics2ddirectspacestate_get_rest_info
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_point
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_point_on_canvas
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_ray
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2ddirectspacestate_cast_motion = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'cast_motion')
  bind_physics2ddirectspacestate_collide_shape = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'collide_shape')
  bind_physics2ddirectspacestate_get_rest_info = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'get_rest_info')
  bind_physics2ddirectspacestate_intersect_point = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_point')
  bind_physics2ddirectspacestate_intersect_point_on_canvas = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_point_on_canvas')
  bind_physics2ddirectspacestate_intersect_ray = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_ray')
  bind_physics2ddirectspacestate_intersect_shape = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_shape')

############################Generated class###################################
cdef class Physics2DDirectSpaceState(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DDirectSpaceState")())
##################################Generated Methods#########################################
  def  cast_motion(self,  classes.Physics2DShapeQueryParameters.Physics2DShapeQueryParameters shape):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_cast_motion,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  collide_shape(self,  classes.Physics2DShapeQueryParameters.Physics2DShapeQueryParameters shape,  int max_results):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = shape.godot_owner
    args[1] = &max_results
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_collide_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_rest_info(self,  classes.Physics2DShapeQueryParameters.Physics2DShapeQueryParameters shape):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[1]

    args[0] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_get_rest_info,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  intersect_point(self,  Vector2 point,  int max_results,  Array exclude,  int collision_layer,  bool collide_with_bodies,  bool collide_with_areas):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[6]

    args[0] = &point._native
    args[1] = &max_results
    args[2] = &exclude._native
    args[3] = &collision_layer
    args[4] = &collide_with_bodies
    args[5] = &collide_with_areas
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  intersect_point_on_canvas(self,  Vector2 point,  int canvas_instance_id,  int max_results,  Array exclude,  int collision_layer,  bool collide_with_bodies,  bool collide_with_areas):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[7]

    args[0] = &point._native
    args[1] = &canvas_instance_id
    args[2] = &max_results
    args[3] = &exclude._native
    args[4] = &collision_layer
    args[5] = &collide_with_bodies
    args[6] = &collide_with_areas
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_point_on_canvas,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  intersect_ray(self,  Vector2 from_,  Vector2 to,  Array exclude,  int collision_layer,  bool collide_with_bodies,  bool collide_with_areas):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[6]

    args[0] = &from_._native
    args[1] = &to._native
    args[2] = &exclude._native
    args[3] = &collision_layer
    args[4] = &collide_with_bodies
    args[5] = &collide_with_areas
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_ray,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  intersect_shape(self,  classes.Physics2DShapeQueryParameters.Physics2DShapeQueryParameters shape,  int max_results):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = shape.godot_owner
    args[1] = &max_results
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

