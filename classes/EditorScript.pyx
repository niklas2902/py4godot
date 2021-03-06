from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorscript__run
cdef godot_method_bind *bind_editorscript_add_root_node
cdef godot_method_bind *bind_editorscript_get_editor_interface
cdef godot_method_bind *bind_editorscript_get_scene
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorscript__run = api_core.godot_method_bind_get_method('EditorScript', '_run')
  bind_editorscript_add_root_node = api_core.godot_method_bind_get_method('EditorScript', 'add_root_node')
  bind_editorscript_get_editor_interface = api_core.godot_method_bind_get_method('EditorScript', 'get_editor_interface')
  bind_editorscript_get_scene = api_core.godot_method_bind_get_method('EditorScript', 'get_scene')

############################Generated class###################################
cdef class EditorScript(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorScript")())
##################################Generated Methods#########################################
  def  _run(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorscript__run,self.godot_owner,[NULL,],NULL)
  def  add_root_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorscript_add_root_node,self.godot_owner,[NULL,],NULL)
  def  get_editor_interface(self):
    cdef godot_object *_owner = self.godot_owner
    cdef EditorInterface ret
    api_core.godot_method_bind_ptrcall(bind_editorscript_get_editor_interface,self.godot_owner,[NULL,],&ret)
  def  get_scene(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Node ret
    api_core.godot_method_bind_ptrcall(bind_editorscript_get_scene,self.godot_owner,[NULL,],&ret)
