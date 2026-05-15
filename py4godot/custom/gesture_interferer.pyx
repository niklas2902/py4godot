# distutils: language=c++
cimport cython
from libc.stdlib cimport malloc, free

cpdef load_model(str model_path):
    model_byte_string = model_path.encode('UTF-8')
    cdef const char * model_c_path = model_byte_string
    cdef bint ret_val = load(model_c_path)
    return ret_val

cpdef infer_model(list points):
    cdef float *float_points

    float_points = <float *> malloc(len(points) * cython.sizeof(float))
    if float_points is NULL:
        raise MemoryError()

    for i in range(len(points)):
        float_points[i] = points[i]

    val = infer(&float_points[0])
    with nogil:
        free(float_points)

    #convert back to python return type
    return val