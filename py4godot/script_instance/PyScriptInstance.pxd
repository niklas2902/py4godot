
from py4godot.classes.ScriptLanguageExtension.ScriptLanguageExtension cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptLanguage.ScriptLanguage cimport *
from py4godot.classes.Script.Script cimport *
from py4godot.classes.Object.Object cimport *


cdef class InstanceData():
    cdef Object owner

cdef GDExtensionObjectPtr get_owner (GDExtensionScriptInstanceDataPtr p_instance)
cdef GDExtensionBool is_placeholder(GDExtensionScriptInstanceDataPtr p_instance)
cdef GDExtensionScriptInstanceInfo native_script_instance

cdef GDExtensionScriptInstanceInfo get_instance()

cdef GDExtensionScriptInstanceInfo* get_instance_ptr()