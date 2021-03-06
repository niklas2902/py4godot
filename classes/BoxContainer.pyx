from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_boxcontainer_add_spacer
cdef godot_method_bind *bind_boxcontainer_get_alignment
cdef godot_method_bind *bind_boxcontainer_set_alignment
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_boxcontainer_add_spacer = api_core.godot_method_bind_get_method('BoxContainer', 'add_spacer')
  bind_boxcontainer_get_alignment = api_core.godot_method_bind_get_method('BoxContainer', 'get_alignment')
  bind_boxcontainer_set_alignment = api_core.godot_method_bind_get_method('BoxContainer', 'set_alignment')

############################Generated class###################################
cdef class BoxContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BoxContainer")())
##################################Generated Properties#########################################
  @property
  def alignment(self): 
    return self.get_alignment()
  @alignment.setter 
  def alignment(self,value): 
    self.set_alignment(value)

##################################Generated Methods#########################################
  def  add_spacer(self, begin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_boxcontainer_add_spacer,self.godot_owner,[NULL,],NULL)
  def  get_alignment(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BoxContainer::AlignMode ret
    api_core.godot_method_bind_ptrcall(bind_boxcontainer_get_alignment,self.godot_owner,[NULL,],&ret)
  def  set_alignment(self, alignment):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_boxcontainer_set_alignment,self.godot_owner,[NULL,],NULL)
