from typing import Callable, Any, TypeVar, ParamSpec
Param = ParamSpec("Param")
RetType = TypeVar("RetType")

def native_method(method: Callable[Param, RetType]) -> Callable[Param, RetType]:
    setattr(method, "gd_is_native", True)
    return method