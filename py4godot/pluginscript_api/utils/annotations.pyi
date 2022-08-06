from py4godot.pluginscript_api.hints import *
def gdclass(cls:object)->None:pass

def gdtool(cls:object)->None:pass

def prop(name:str,type_:object, defaultval:object, hint:BaseHint = BaseHint(""), hint_string:str = "")->None:pass

def gdproperty(type_:object, defaultval:object, hint:BaseHint = BaseHint(""), hint_string:str = ""):pass


def gdmethod(func)->None:pass

def register_signal(signal_name:str, args=None)->None:
    if args is None:
        args = dict()