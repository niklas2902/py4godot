from py4godot.classes.Engine import Engine
from py4godot.classes.Object import Object

def get_singleton(name: str) -> Object | None:
    """
    Retrieves a singleton by the name of it.

    This function first checks if the specified name corresponds to a registered singleton
    within the Engine. If so, it returns the singleton instance. If not, it attempts to find
    a node with the given name from the root of the scene tree. This is then a custom singleton
    specified in Globals

    Args:
        name (str): The name of the singleton or node to retrieve.

    Returns:
        Object | None: The singleton or node object if found, otherwise None.
    """
    engine = Engine.instance()
    has_singleton = engine.has_singleton(name)
    if has_singleton:
        return engine.get_singleton(name)
    tree = engine.get_main_loop()
    root = tree.get_root()
    return root.get_node(name)
