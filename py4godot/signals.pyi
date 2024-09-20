from typing import Any, List

from py4godot.classes.core import *
from py4godot.pluginscript_api.utils.SignalArg import SignalArg

class SignalArg:
    def __init__(self, name, type_) -> None: pass

def signal(name:str, args:List[SignalArg]) -> GDSignal: pass
class GDSignal():
    @staticmethod
    def new0() -> GDSignal:pass
    @staticmethod
    def new1(from_:Signal)->GDSignal:pass
    @staticmethod
    def new2(object_:Object, signal: StringName) -> GDSignal:pass

    def connect(self, function:Any , flags:int =0) -> None:pass


    def disconnect(self, function: Any )->None: pass


class BuiltinSignal(Signal):
    def __init__(self, parent:Object, name: StringName) -> BuiltinSignal: pass
    def connect(self, function:Any, flags: int =0) -> None: pass


    def disconnect(self, function:Any )-> None: pass