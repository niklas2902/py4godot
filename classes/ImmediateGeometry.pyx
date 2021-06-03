
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
cimport classes.Texture
cimport classes.GeometryInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_immediategeometry_add_sphere
cdef godot_method_bind *bind_immediategeometry_add_vertex
cdef godot_method_bind *bind_immediategeometry_begin
cdef godot_method_bind *bind_immediategeometry_clear
cdef godot_method_bind *bind_immediategeometry_end
cdef godot_method_bind *bind_immediategeometry_set_color
cdef godot_method_bind *bind_immediategeometry_set_normal
cdef godot_method_bind *bind_immediategeometry_set_tangent
cdef godot_method_bind *bind_immediategeometry_set_uv
cdef godot_method_bind *bind_immediategeometry_set_uv2
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_immediategeometry_add_sphere = api_core.godot_method_bind_get_method('ImmediateGeometry', 'add_sphere')
  bind_immediategeometry_add_vertex = api_core.godot_method_bind_get_method('ImmediateGeometry', 'add_vertex')
  bind_immediategeometry_begin = api_core.godot_method_bind_get_method('ImmediateGeometry', 'begin')
  bind_immediategeometry_clear = api_core.godot_method_bind_get_method('ImmediateGeometry', 'clear')
  bind_immediategeometry_end = api_core.godot_method_bind_get_method('ImmediateGeometry', 'end')
  bind_immediategeometry_set_color = api_core.godot_method_bind_get_method('ImmediateGeometry', 'set_color')
  bind_immediategeometry_set_normal = api_core.godot_method_bind_get_method('ImmediateGeometry', 'set_normal')
  bind_immediategeometry_set_tangent = api_core.godot_method_bind_get_method('ImmediateGeometry', 'set_tangent')
  bind_immediategeometry_set_uv = api_core.godot_method_bind_get_method('ImmediateGeometry', 'set_uv')
  bind_immediategeometry_set_uv2 = api_core.godot_method_bind_get_method('ImmediateGeometry', 'set_uv2')

############################Generated class###################################
cdef class ImmediateGeometry(classes.GeometryInstance.GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ImmediateGeometry")())
##################################Generated Methods#########################################
  def  add_sphere(self,  int lats,  int lons,  float radius,  bool add_uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &lats
    args[1] = &lons
    args[2] = &radius
    args[3] = &add_uv
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_add_sphere,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_vertex(self,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_add_vertex,self.godot_owner,args,NULL)
    hello('hallo2')
  def  begin(self,  int primitive,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &primitive
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_immediategeometry_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  end(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_immediategeometry_end,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal(self,  Vector3 normal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &normal._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_normal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tangent(self,  Plane tangent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &tangent._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_tangent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_uv(self,  Vector2 uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &uv._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_uv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_uv2(self,  Vector2 uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &uv._native
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_uv2,self.godot_owner,args,NULL)
    hello('hallo2')
