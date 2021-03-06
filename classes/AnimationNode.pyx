from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class AnimationNode(Resource):
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
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_animationnode__get_filters,self.godot_owner,[NULL,],&ret)
  def  _set_filters(self, filters):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode__set_filters,self.godot_owner,[NULL,],NULL)
  def  add_input(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_add_input,self.godot_owner,[NULL,],NULL)
  def  blend_animation(self, animationtimedeltaseekedblend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_animation,self.godot_owner,[NULL,],NULL)
  def  blend_input(self, input_indextimeseekblendfilteroptimize):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_input,self.godot_owner,[NULL,],&ret)
  def  blend_node(self, namenodetimeseekblendfilteroptimize):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_blend_node,self.godot_owner,[NULL,],&ret)
  def  get_caption(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_caption,self.godot_owner,[NULL,],&ret)
  def  get_child_by_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_child_by_name,self.godot_owner,[NULL,],&ret)
  def  get_child_nodes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_child_nodes,self.godot_owner,[NULL,],&ret)
  def  get_input_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_input_count,self.godot_owner,[NULL,],&ret)
  def  get_input_name(self, input):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_input_name,self.godot_owner,[NULL,],&ret)
  def  get_parameter(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter,self.godot_owner,[NULL,],&ret)
  def  get_parameter_default_value(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter_default_value,self.godot_owner,[NULL,],&ret)
  def  get_parameter_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_get_parameter_list,self.godot_owner,[NULL,],&ret)
  def  has_filter(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_has_filter,self.godot_owner,[NULL,],&ret)
  def  is_filter_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_is_filter_enabled,self.godot_owner,[NULL,],&ret)
  def  is_path_filtered(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnode_is_path_filtered,self.godot_owner,[NULL,],&ret)
  def  process(self, timeseek):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_process,self.godot_owner,[NULL,],NULL)
  def  remove_input(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_remove_input,self.godot_owner,[NULL,],NULL)
  def  set_filter_enabled(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_filter_enabled,self.godot_owner,[NULL,],NULL)
  def  set_filter_path(self, pathenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_filter_path,self.godot_owner,[NULL,],NULL)
  def  set_parameter(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnode_set_parameter,self.godot_owner,[NULL,],NULL)
