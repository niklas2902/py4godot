from classes.Translation cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_phashtranslation_generate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_phashtranslation_generate = api_core.godot_method_bind_get_method('PHashTranslation', 'generate')

############################Generated class###################################
cdef class PHashTranslation(Translation):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PHashTranslation")())
##################################Generated Methods#########################################
  def  generate(self, from_):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_phashtranslation_generate,self.godot_owner,[NULL,],NULL)
