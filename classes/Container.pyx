from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_container__child_minsize_changed
cdef godot_method_bind *bind_container__sort_children
cdef godot_method_bind *bind_container_fit_child_in_rect
cdef godot_method_bind *bind_container_queue_sort
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_container__child_minsize_changed = api_core.godot_method_bind_get_method('Container', '_child_minsize_changed')
  bind_container__sort_children = api_core.godot_method_bind_get_method('Container', '_sort_children')
  bind_container_fit_child_in_rect = api_core.godot_method_bind_get_method('Container', 'fit_child_in_rect')
  bind_container_queue_sort = api_core.godot_method_bind_get_method('Container', 'queue_sort')

############################Generated class###################################
cdef class Container(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Container")())
##################################Generated Methods#########################################
  def  _child_minsize_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_container__child_minsize_changed,self.godot_owner,[NULL,],NULL)
  def  _sort_children(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_container__sort_children,self.godot_owner,[NULL,],NULL)
  def  fit_child_in_rect(self, childrect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_container_fit_child_in_rect,self.godot_owner,[NULL,],NULL)
  def  queue_sort(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_container_queue_sort,self.godot_owner,[NULL,],NULL)
