from classes.Container cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gridcontainer_get_columns
cdef godot_method_bind *bind_gridcontainer_set_columns
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gridcontainer_get_columns = api_core.godot_method_bind_get_method('GridContainer', 'get_columns')
  bind_gridcontainer_set_columns = api_core.godot_method_bind_get_method('GridContainer', 'set_columns')

############################Generated class###################################
cdef class GridContainer(Container):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GridContainer")())
##################################Generated Properties#########################################
  @property
  def columns(self): 
    return self.get_columns()
  @columns.setter 
  def columns(self,value): 
    self.set_columns(value)

##################################Generated Methods#########################################
  def  get_columns(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridcontainer_get_columns,self.godot_owner,[NULL,],&ret)
  def  set_columns(self, columns):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridcontainer_set_columns,self.godot_owner,[NULL,],NULL)
