from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_surfacetool_add_bones
cdef godot_method_bind *bind_surfacetool_add_color
cdef godot_method_bind *bind_surfacetool_add_index
cdef godot_method_bind *bind_surfacetool_add_normal
cdef godot_method_bind *bind_surfacetool_add_smooth_group
cdef godot_method_bind *bind_surfacetool_add_tangent
cdef godot_method_bind *bind_surfacetool_add_triangle_fan
cdef godot_method_bind *bind_surfacetool_add_uv
cdef godot_method_bind *bind_surfacetool_add_uv2
cdef godot_method_bind *bind_surfacetool_add_vertex
cdef godot_method_bind *bind_surfacetool_add_weights
cdef godot_method_bind *bind_surfacetool_append_from
cdef godot_method_bind *bind_surfacetool_begin
cdef godot_method_bind *bind_surfacetool_clear
cdef godot_method_bind *bind_surfacetool_commit
cdef godot_method_bind *bind_surfacetool_commit_to_arrays
cdef godot_method_bind *bind_surfacetool_create_from
cdef godot_method_bind *bind_surfacetool_create_from_blend_shape
cdef godot_method_bind *bind_surfacetool_deindex
cdef godot_method_bind *bind_surfacetool_generate_normals
cdef godot_method_bind *bind_surfacetool_generate_tangents
cdef godot_method_bind *bind_surfacetool_index
cdef godot_method_bind *bind_surfacetool_set_material
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_surfacetool_add_bones = api_core.godot_method_bind_get_method('SurfaceTool', 'add_bones')
  bind_surfacetool_add_color = api_core.godot_method_bind_get_method('SurfaceTool', 'add_color')
  bind_surfacetool_add_index = api_core.godot_method_bind_get_method('SurfaceTool', 'add_index')
  bind_surfacetool_add_normal = api_core.godot_method_bind_get_method('SurfaceTool', 'add_normal')
  bind_surfacetool_add_smooth_group = api_core.godot_method_bind_get_method('SurfaceTool', 'add_smooth_group')
  bind_surfacetool_add_tangent = api_core.godot_method_bind_get_method('SurfaceTool', 'add_tangent')
  bind_surfacetool_add_triangle_fan = api_core.godot_method_bind_get_method('SurfaceTool', 'add_triangle_fan')
  bind_surfacetool_add_uv = api_core.godot_method_bind_get_method('SurfaceTool', 'add_uv')
  bind_surfacetool_add_uv2 = api_core.godot_method_bind_get_method('SurfaceTool', 'add_uv2')
  bind_surfacetool_add_vertex = api_core.godot_method_bind_get_method('SurfaceTool', 'add_vertex')
  bind_surfacetool_add_weights = api_core.godot_method_bind_get_method('SurfaceTool', 'add_weights')
  bind_surfacetool_append_from = api_core.godot_method_bind_get_method('SurfaceTool', 'append_from')
  bind_surfacetool_begin = api_core.godot_method_bind_get_method('SurfaceTool', 'begin')
  bind_surfacetool_clear = api_core.godot_method_bind_get_method('SurfaceTool', 'clear')
  bind_surfacetool_commit = api_core.godot_method_bind_get_method('SurfaceTool', 'commit')
  bind_surfacetool_commit_to_arrays = api_core.godot_method_bind_get_method('SurfaceTool', 'commit_to_arrays')
  bind_surfacetool_create_from = api_core.godot_method_bind_get_method('SurfaceTool', 'create_from')
  bind_surfacetool_create_from_blend_shape = api_core.godot_method_bind_get_method('SurfaceTool', 'create_from_blend_shape')
  bind_surfacetool_deindex = api_core.godot_method_bind_get_method('SurfaceTool', 'deindex')
  bind_surfacetool_generate_normals = api_core.godot_method_bind_get_method('SurfaceTool', 'generate_normals')
  bind_surfacetool_generate_tangents = api_core.godot_method_bind_get_method('SurfaceTool', 'generate_tangents')
  bind_surfacetool_index = api_core.godot_method_bind_get_method('SurfaceTool', 'index')
  bind_surfacetool_set_material = api_core.godot_method_bind_get_method('SurfaceTool', 'set_material')

############################Generated class###################################
cdef class SurfaceTool(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SurfaceTool")())
##################################Generated Methods#########################################
  def  add_bones(self, bones):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_bones,self.godot_owner,[NULL,],NULL)
  def  add_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_color,self.godot_owner,[NULL,],NULL)
  def  add_index(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_index,self.godot_owner,[NULL,],NULL)
  def  add_normal(self, normal):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_normal,self.godot_owner,[NULL,],NULL)
  def  add_smooth_group(self, smooth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_smooth_group,self.godot_owner,[NULL,],NULL)
  def  add_tangent(self, tangent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_tangent,self.godot_owner,[NULL,],NULL)
  def  add_triangle_fan(self, verticesuvscolorsuv2snormalstangents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_triangle_fan,self.godot_owner,[NULL,],NULL)
  def  add_uv(self, uv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_uv,self.godot_owner,[NULL,],NULL)
  def  add_uv2(self, uv2):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_uv2,self.godot_owner,[NULL,],NULL)
  def  add_vertex(self, vertex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_vertex,self.godot_owner,[NULL,],NULL)
  def  add_weights(self, weights):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_weights,self.godot_owner,[NULL,],NULL)
  def  append_from(self, existingsurfacetransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_append_from,self.godot_owner,[NULL,],NULL)
  def  begin(self, primitive):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_begin,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_clear,self.godot_owner,[NULL,],NULL)
  def  commit(self, existingflags):
    cdef godot_object *_owner = self.godot_owner
    cdef ArrayMesh ret
    api_core.godot_method_bind_ptrcall(bind_surfacetool_commit,self.godot_owner,[NULL,],&ret)
  def  commit_to_arrays(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_surfacetool_commit_to_arrays,self.godot_owner,[NULL,],&ret)
  def  create_from(self, existingsurface):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_create_from,self.godot_owner,[NULL,],NULL)
  def  create_from_blend_shape(self, existingsurfaceblend_shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_create_from_blend_shape,self.godot_owner,[NULL,],NULL)
  def  deindex(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_deindex,self.godot_owner,[NULL,],NULL)
  def  generate_normals(self, flip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_generate_normals,self.godot_owner,[NULL,],NULL)
  def  generate_tangents(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_generate_tangents,self.godot_owner,[NULL,],NULL)
  def  index(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_index,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_set_material,self.godot_owner,[NULL,],NULL)
