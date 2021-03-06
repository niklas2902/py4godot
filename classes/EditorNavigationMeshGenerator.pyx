from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editornavigationmeshgenerator_bake
cdef godot_method_bind *bind_editornavigationmeshgenerator_clear
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editornavigationmeshgenerator_bake = api_core.godot_method_bind_get_method('EditorNavigationMeshGenerator', 'bake')
  bind_editornavigationmeshgenerator_clear = api_core.godot_method_bind_get_method('EditorNavigationMeshGenerator', 'clear')

############################Generated class###################################
cdef class EditorNavigationMeshGenerator(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorNavigationMeshGenerator")())
##################################Generated Methods#########################################
  def  bake(self, nav_meshroot_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editornavigationmeshgenerator_bake,self.godot_owner,[NULL,],NULL)
  def  clear(self, nav_mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editornavigationmeshgenerator_clear,self.godot_owner,[NULL,],NULL)
