import os
import sys
sys.path.append(os.getcwd()+"/../")
sys.path.append(os.getcwd())
if "generation_files" in os.getcwd():
    os.chdir(os.getcwd()+"/../")


def generate_cast_helpers(class_names):
    res = ""
    import_ = """# distutils: language=c++
from cpython cimport Py_INCREF, Py_DECREF, PyObject
vals = []
def clear_vals():
    global vals
    vals.clear()
"""
    for dependency in class_names:
        res += \
            f"""cdef api PyObject* cast_to_{dependency.lower()}(PyObject* other):
    cdef {dependency} o = {dependency}.cast(<Object>other)
    vals.append(o)
    return <PyObject*>o\n"""

    for dependency in class_names:
        import_ += f"from py4godot.classes.{dependency} cimport *\n"

    total_string = import_ + res
    print(total_string)

    with open("py4godot/core/variant4/cast_helpers.pyx", "w") as f:
        f.write(total_string)



    cast_type = """#include "py4godot/cppcore/cast_type.h"
#include <cassert>

constexpr unsigned int str2int(const char* str, int h = 0)
{
    return !str[h] ? 5381 : (str2int(str, h+1) * 33) ^ str[h];
}

void init_casting(){

    import_py4godot__core__variant4__cast_helpers();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        assert(false);
        return;
    }
}

PyObject* cast_to_type(char* classname, PyObject* object_to_cast){
    switch(str2int(classname)){
#cast_code
        default:
            assert(false); // object not supported for conversion TODO
    }
    return object_to_cast;
}"""

    switch_statements = ""
    for dependency in class_names:
        switch_statements += f'''        case str2int("{dependency}"):
            return cast_to_{dependency.lower()}(object_to_cast);\n'''

    with open("py4godot/cppcore/cast_type.cpp" , "w") as f:
        f.write(cast_type.replace("#cast_code", switch_statements))

    os.chdir(os.getcwd()+"/generation_files")