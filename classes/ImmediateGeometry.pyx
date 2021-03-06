from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class ImmediateGeometry(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ImmediateGeometry")())
##################################Generated Methods#########################################
  def  add_sphere(self, latslonsradiusadd_uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_add_sphere,self.godot_owner,[NULL,],NULL)
  def  add_vertex(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_add_vertex,self.godot_owner,[NULL,],NULL)
  def  begin(self, primitivetexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_begin,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_clear,self.godot_owner,[NULL,],NULL)
  def  end(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_end,self.godot_owner,[NULL,],NULL)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_color,self.godot_owner,[NULL,],NULL)
  def  set_normal(self, normal):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_normal,self.godot_owner,[NULL,],NULL)
  def  set_tangent(self, tangent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_tangent,self.godot_owner,[NULL,],NULL)
  def  set_uv(self, uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_uv,self.godot_owner,[NULL,],NULL)
  def  set_uv2(self, uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_immediategeometry_set_uv2,self.godot_owner,[NULL,],NULL)
