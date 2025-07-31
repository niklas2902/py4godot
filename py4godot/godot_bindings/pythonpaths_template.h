#ifdef _WIN64
#define PYTHONHOME L"addons/py4godot/{python_ver}-windows64/python"
#define PYTHONPATH "addons/py4godot/{python_ver}-windows64/python/Lib/site-packages"

#elif _WIN32
#define PYTHONHOME L"addons/py4godot/{python_ver}-windows32/python/"

#elif __linux32__ && defined(__i386__)
#define PYTHONHOME L"addons/py4godot/{python_ver}-linux32/python/"


#elif defined(__linux__) && defined(__aarch64__)
#define PYTHONHOME L"addons/py4godot/{python_ver}-linuxarm64/python/"
#define PYTHONPATH "/addons/py4godot/{python_ver}-linuxarm64/python/lib/python3.12/site-packages"


#elif __linux__
#define PYTHONHOME L"addons/py4godot/{python_ver}-linux64/python"
#define PYTHONPATH "/addons/py4godot/{python_ver}-linux64/python/lib/python3.12/site-packages"


#elif __APPLE__
#define PYTHONHOME L"addons/py4godot/{python_ver}-darwin64/python"
#define PYTHONPATH "/addons/py4godot/{python_ver}-darwin64/python/lib/python3.12/site-packages"
#endif