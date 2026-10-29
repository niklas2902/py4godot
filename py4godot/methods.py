from typing import Any

from py4godot.pluginscript_api.utils.annotations import private as gd_private

def private(func:Any):
    return gd_private(func)