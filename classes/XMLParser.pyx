from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_xmlparser_get_attribute_count
cdef godot_method_bind *bind_xmlparser_get_attribute_name
cdef godot_method_bind *bind_xmlparser_get_attribute_value
cdef godot_method_bind *bind_xmlparser_get_current_line
cdef godot_method_bind *bind_xmlparser_get_named_attribute_value
cdef godot_method_bind *bind_xmlparser_get_named_attribute_value_safe
cdef godot_method_bind *bind_xmlparser_get_node_data
cdef godot_method_bind *bind_xmlparser_get_node_name
cdef godot_method_bind *bind_xmlparser_get_node_offset
cdef godot_method_bind *bind_xmlparser_get_node_type
cdef godot_method_bind *bind_xmlparser_has_attribute
cdef godot_method_bind *bind_xmlparser_is_empty
cdef godot_method_bind *bind_xmlparser_open
cdef godot_method_bind *bind_xmlparser_open_buffer
cdef godot_method_bind *bind_xmlparser_read
cdef godot_method_bind *bind_xmlparser_seek
cdef godot_method_bind *bind_xmlparser_skip_section
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_xmlparser_get_attribute_count = api_core.godot_method_bind_get_method('XMLParser', 'get_attribute_count')
  bind_xmlparser_get_attribute_name = api_core.godot_method_bind_get_method('XMLParser', 'get_attribute_name')
  bind_xmlparser_get_attribute_value = api_core.godot_method_bind_get_method('XMLParser', 'get_attribute_value')
  bind_xmlparser_get_current_line = api_core.godot_method_bind_get_method('XMLParser', 'get_current_line')
  bind_xmlparser_get_named_attribute_value = api_core.godot_method_bind_get_method('XMLParser', 'get_named_attribute_value')
  bind_xmlparser_get_named_attribute_value_safe = api_core.godot_method_bind_get_method('XMLParser', 'get_named_attribute_value_safe')
  bind_xmlparser_get_node_data = api_core.godot_method_bind_get_method('XMLParser', 'get_node_data')
  bind_xmlparser_get_node_name = api_core.godot_method_bind_get_method('XMLParser', 'get_node_name')
  bind_xmlparser_get_node_offset = api_core.godot_method_bind_get_method('XMLParser', 'get_node_offset')
  bind_xmlparser_get_node_type = api_core.godot_method_bind_get_method('XMLParser', 'get_node_type')
  bind_xmlparser_has_attribute = api_core.godot_method_bind_get_method('XMLParser', 'has_attribute')
  bind_xmlparser_is_empty = api_core.godot_method_bind_get_method('XMLParser', 'is_empty')
  bind_xmlparser_open = api_core.godot_method_bind_get_method('XMLParser', 'open')
  bind_xmlparser_open_buffer = api_core.godot_method_bind_get_method('XMLParser', 'open_buffer')
  bind_xmlparser_read = api_core.godot_method_bind_get_method('XMLParser', 'read')
  bind_xmlparser_seek = api_core.godot_method_bind_get_method('XMLParser', 'seek')
  bind_xmlparser_skip_section = api_core.godot_method_bind_get_method('XMLParser', 'skip_section')

############################Generated class###################################
cdef class XMLParser(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("XMLParser")())
##################################Generated Methods#########################################
  def  get_attribute_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_attribute_count,self.godot_owner,[NULL,],&ret)
  def  get_attribute_name(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_attribute_name,self.godot_owner,[NULL,],&ret)
  def  get_attribute_value(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_attribute_value,self.godot_owner,[NULL,],&ret)
  def  get_current_line(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_current_line,self.godot_owner,[NULL,],&ret)
  def  get_named_attribute_value(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_named_attribute_value,self.godot_owner,[NULL,],&ret)
  def  get_named_attribute_value_safe(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_named_attribute_value_safe,self.godot_owner,[NULL,],&ret)
  def  get_node_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_node_data,self.godot_owner,[NULL,],&ret)
  def  get_node_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_node_name,self.godot_owner,[NULL,],&ret)
  def  get_node_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_node_offset,self.godot_owner,[NULL,],&ret)
  def  get_node_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef XMLParser::NodeType ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_get_node_type,self.godot_owner,[NULL,],&ret)
  def  has_attribute(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_has_attribute,self.godot_owner,[NULL,],&ret)
  def  is_empty(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_is_empty,self.godot_owner,[NULL,],&ret)
  def  open(self, file):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_open,self.godot_owner,[NULL,],&ret)
  def  open_buffer(self, buffer):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_open_buffer,self.godot_owner,[NULL,],&ret)
  def  read(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_read,self.godot_owner,[NULL,],&ret)
  def  seek(self, position):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_xmlparser_seek,self.godot_owner,[NULL,],&ret)
  def  skip_section(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_xmlparser_skip_section,self.godot_owner,[NULL,],NULL)
