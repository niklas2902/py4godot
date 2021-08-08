	#Property info dictionary format
	#{
	#name: <string>
	#type: <int:godot_variant_type>
	#hint: <int:godot_property_hint>
	#hint_string: <string>
	#usage: <int:godot_property_usage_flags>
	#default_value: <variant>
	#rset_mode: <int:godot_method_rpc_mode>
	#}

cdef class PropertyDescription:
    def __init__(self, name, hint, hint_string, usage, default_value, rset_mode):
        self.name = name
        self.hint = hint
        self.hint_string = hint_string
        self.usage = usage
        self.default_value = default_value
        self.rset_mode = rset_mode
    def to_dict(self):
        pass
