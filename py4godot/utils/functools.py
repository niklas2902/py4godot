from typing import Callable, Any


def native_method[F: Callable[..., Any]](method: F) -> F:
    setattr(method, "gd_is_native", True)
    return method