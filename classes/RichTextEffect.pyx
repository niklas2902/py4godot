from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_richtexteffect__process_custom_fx
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_richtexteffect__process_custom_fx = api_core.godot_method_bind_get_method('RichTextEffect', '_process_custom_fx')

############################Generated class###################################
cdef class RichTextEffect(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RichTextEffect")())
##################################Generated Methods#########################################
  def  _process_custom_fx(self, char_fx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_richtexteffect__process_custom_fx,self.godot_owner,[NULL,],&ret)
