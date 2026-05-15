cdef extern from "py4godot/custom_cpp/gesture_interferer.h":
    bint load(const char * c_path)
    int infer(const float *input)