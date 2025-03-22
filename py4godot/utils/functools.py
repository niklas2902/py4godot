def native_method(method):
    """setting an attribute to mark if a method was overridden. This is made to handle virtual methods like _ready and
    _update and check whether they were overridden."""
    method.gd_is_native = True
    return method