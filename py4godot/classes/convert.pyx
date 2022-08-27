from py4godot.utils.Wrapper cimport *

get_class_function = None
dict_convert = dict()
def init_convert(dictionary, function):
    global dict_convert
    global get_class_function
    dict_convert = dictionary
    get_class_function = function

def convert(Wrapper wrapper):
    return dict_convert[get_class_function(wrapper)].cast(wrapper)