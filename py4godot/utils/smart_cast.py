classes_to_cast_functions = dict()
def smart_cast(o:object):
  return classes_to_cast_functions[o.get_class()](o)

def register_cast_function(classname, cast_fn):
  classes_to_cast_functions[classname] = cast_fn