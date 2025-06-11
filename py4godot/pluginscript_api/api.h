#pragma once


namespace godot{
    class PyLanguage;
    void init_py_language();
    void deinit_py_language();

    PyLanguage* get_language();
}
