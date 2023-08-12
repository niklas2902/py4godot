from py4godot.pluginscript_api.utils.SignalArg import SignalArg


class SignalDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name:str, args:list[SignalArg]) -> SignalDescription: pass