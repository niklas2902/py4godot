
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
cimport classes.AnimationNode
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnode__get_filters
cdef godot_method_bind *bind_animationnode__set_filters
cdef godot_method_bind *bind_animationnode_add_input
cdef godot_method_bind *bind_animationnode_blend_animation
cdef godot_method_bind *bind_animationnode_blend_input
cdef godot_method_bind *bind_animationnode_blend_node
cdef godot_method_bind *bind_animationnode_get_caption
cdef godot_method_bind *bind_animationnode_get_child_by_name
cdef godot_method_bind *bind_animationnode_get_child_nodes
cdef godot_method_bind *bind_animationnode_get_input_count
cdef godot_method_bind *bind_animationnode_get_input_name
cdef godot_method_bind *bind_animationnode_get_parameter
cdef godot_method_bind *bind_animationnode_get_parameter_default_value
cdef godot_method_bind *bind_animationnode_get_parameter_list
cdef godot_method_bind *bind_animationnode_has_filter
cdef godot_method_bind *bind_animationnode_is_filter_enabled
cdef godot_method_bind *bind_animationnode_is_path_filtered
cdef godot_method_bind *bind_animationnode_process
cdef godot_method_bind *bind_animationnode_remove_input
cdef godot_method_bind *bind_animationnode_set_filter_enabled
cdef godot_method_bind *bind_animationnode_set_filter_path
cdef godot_method_bind *bind_animationnode_set_parameter
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnode__get_filters = api_core.godot_method_bind_get_method('AnimationNode', '_get_filters')
  bind_animationnode__set_filters = api_core.godot_method_bind_get_method('AnimationNode', '_set_filters')
  bind_animationnode_add_input = api_core.godot_method_bind_get_method('AnimationNode', 'add_input')
  bind_animationnode_blend_animation = api_core.godot_method_bind_get_method('AnimationNode', 'blend_animation')
  bind_animationnode_blend_input = api_core.godot_method_bind_get_method('AnimationNode', 'blend_input')
  bind_animationnode_blend_node = api_core.godot_method_bind_get_method('AnimationNode', 'blend_node')
  bind_animationnode_get_caption = api_core.godot_method_bind_get_method('AnimationNode', 'get_caption')
  bind_animationnode_get_child_by_name = api_core.godot_method_bind_get_method('AnimationNode', 'get_child_by_name')
  bind_animationnode_get_child_nodes = api_core.godot_method_bind_get_method('AnimationNode', 'get_child_nodes')
  bind_animationnode_get_input_count = api_core.godot_method_bind_get_method('AnimationNode', 'get_input_count')
  bind_animationnode_get_input_name = api_core.godot_method_bind_get_method('AnimationNode', 'get_input_name')
  bind_animationnode_get_parameter = api_core.godot_method_bind_get_method('AnimationNode', 'get_parameter')
  bind_animationnode_get_parameter_default_value = api_core.godot_method_bind_get_method('AnimationNode', 'get_parameter_default_value')
  bind_animationnode_get_parameter_list = api_core.godot_method_bind_get_method('AnimationNode', 'get_parameter_list')
  bind_animationnode_has_filter = api_core.godot_method_bind_get_method('AnimationNode', 'has_filter')
  bind_animationnode_is_filter_enabled = api_core.godot_method_bind_get_method('AnimationNode', 'is_filter_enabled')
  bind_animationnode_is_path_filtered = api_core.godot_method_bind_get_method('AnimationNode', 'is_path_filtered')
  bind_animationnode_process = api_core.godot_method_bind_get_method('AnimationNode', 'process')
  bind_animationnode_remove_input = api_core.godot_method_bind_get_method('AnimationNode', 'remove_input')
  bind_animationnode_set_filter_enabled = api_core.godot_method_bind_get_method('AnimationNode', 'set_filter_enabled')
  bind_animationnode_set_filter_path = api_core.godot_method_bind_get_method('AnimationNode', 'set_filter_path')
  bind_animationnode_set_parameter = api_core.godot_method_bind_get_method('AnimationNode', 'set_parameter')

############################Generated class###################################
cdef class AnimationNode(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNode")())
##################################Generated Properties#########################################
  @property
  def filter_enabled(self): 
    return self.get_filter_enabled()
  @filter_enabled.setter 
  def filter_enabled(self,value): 
    self.set_filter_enabled(value)
  @property
  def filters(self): 
    return self.get_filters()
  @filters.setter 
  def filters(self,value): 
    self.set_filters(value)

##################################Generated Methods#########################################
  def  _get_filters(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode__get_filters,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_filters(self,  Array filters):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filters._native
    api_core.godot_method_bind_ptrcall(bind_animationnode__set_filters,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_input(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_add_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend_animation(self,  String animation,  float time,  float delta,  bool seeked,  float blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &animation._native
    args[1] = &time
    args[2] = &delta
    args[3] = &seeked
    args[4] = &blend
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend_input(self,  int input_index,  float time,  bool seek,  float blend,  int filter,  bool optimize):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[6]

    args[0] = &input_index
    args[1] = &time
    args[2] = &seek
    args[3] = &blend
    args[4] = &filter
    args[5] = &optimize
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_input,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  blend_node(self,  String name,  classes.AnimationNode.AnimationNode node,  float time,  bool seek,  float blend,  int filter,  bool optimize):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[7]

    args[0] = &name._native
    args[1] = node.godot_owner
    args[2] = &time
    args[3] = &seek
    args[4] = &blend
    args[5] = &filter
    args[6] = &optimize
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_caption(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_get_caption,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_child_by_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_child_by_name,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_child_nodes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_get_child_nodes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_input_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_get_input_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_input_name(self,  int input):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &input
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_input_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_parameter(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_parameter_default_value(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter_default_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_parameter_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  has_filter(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_has_filter,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_filter_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnode_is_filter_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_path_filtered(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_is_path_filtered,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  process(self,  float time,  bool seek):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &time
    args[1] = &seek
    api_core.godot_method_bind_ptrcall(bind_animationnode_process,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_input(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_animationnode_remove_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_enabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_filter_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_path(self,  NodePath path,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_filter_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_parameter(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_parameter,self.godot_owner,args,NULL)
    hello('hallo2')
