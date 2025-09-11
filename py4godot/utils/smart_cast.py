classes_to_cast_functions = dict()
class_names_to_classes_dict = dict()
def smart_cast(o:object):
  return classes_to_cast_functions[o.get_class()](o)

def register_cast_function(classname, cast_fn):
  classes_to_cast_functions[classname] = cast_fn

def register_class(classname, class_):
    class_names_to_classes_dict[classname] = class_


def get_class(classname):
    return class_names_to_classes_dict[classname]