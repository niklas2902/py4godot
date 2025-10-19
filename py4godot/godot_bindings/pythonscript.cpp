#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__) || defined(__ANDROID__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS/Android
#endif

#if defined(__ANDROID__)
#include <android/log.h>
#define ANDROID_LOG_TAG "com.example.example"
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG, ANDROID_LOG_TAG, __VA_ARGS__)
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, ANDROID_LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, ANDROID_LOG_TAG, __VA_ARGS__)
#endif

typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                            GDExtensionClassLibraryPtr p_library,
                                            GDExtensionInitialization *r_initialization);

extern "C" {
    // Entry point for initializing Python script extension
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                                       GDExtensionClassLibraryPtr p_library,
                                                       GDExtensionInitialization *r_initialization) {

        #if defined(__ANDROID__)
        // Android-specific handling
        // On Android, the library is in the same directory (lib folder)
        LOGI("Starting PythonScript initialization for Android");

        void* handle = nullptr;

        #if defined(__aarch64__) || defined(__arm__)
        // Load the ARM/ARM64 Android shared library from the same directory
        LOGD("Loading libmain.so for ARM/ARM64 architecture");
        handle = dlopen("libmain.so", RTLD_NOW | RTLD_GLOBAL);
        #elif defined(__i386__) || defined(__x86_64__)
        // Load the x86/x86_64 Android shared library from the same directory
        LOGD("Loading libmain.so for x86/x86_64 architecture");
        handle = dlopen("libmain.so", RTLD_NOW | RTLD_GLOBAL);
        #endif

        if (!handle) {
            LOGE("Cannot load library on Android: %s", dlerror());
            return 0;
        }

        LOGI("Library loaded successfully");

        // Clear any existing errors
        dlerror();

        // Load the py4godot_init symbol
        LOGD("Loading py4godot_init symbol");
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            LOGE("Cannot load symbol 'py4godot_init' on Android: %s", dlsym_error);
            dlclose(handle);
            return 0;
        }

        LOGI("py4godot_init symbol loaded successfully");

        // Call the loaded function
        LOGD("Calling py4godot_init function");
        GDExtensionBool result = load_function_handle(p_get_proc_address, p_library, r_initialization);

        if (result) {
            LOGI("PythonScript initialization completed successfully");
        } else {
            LOGE("PythonScript initialization failed");
        }

        // Note: Not closing handle on Android (similar to macOS behavior)
        return result;

        #elif defined(__linux__)
        void* handle = nullptr;
        char python_home[PATH_MAX];
        wcstombs(python_home, PYTHONHOME, sizeof(python_home));

        #if defined(__aarch64__)
        // Load the ARM64 Linux shared library
        handle = dlopen((std::string(python_home) + "/bin/main.so").c_str(), RTLD_NOW | RTLD_GLOBAL);
        #else
        // Load the x86_64 Linux shared library
        handle = dlopen((std::string(python_home) + "/bin/main.so").c_str(), RTLD_NOW | RTLD_GLOBAL);
        #endif

        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 0;
        }

        // Clear any existing errors
        dlerror();

        // Load the py4godot_init symbol
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            dlclose(handle);
            return 0;
        }

        // Call the loaded function
        GDExtensionBool result = load_function_handle(p_get_proc_address, p_library, r_initialization);

        // Close the library handle only on linux (crash on macos)
//        dlclose(handle);

        return result;

        #elif defined(__APPLE__)
        char python_home[PATH_MAX];
        wcstombs(python_home, PYTHONHOME, sizeof(python_home));
        // Load the shared library on macOS
        void* handle = dlopen((std::string(python_home) + "/bin/main.dylib").c_str(), RTLD_NOW | RTLD_GLOBAL);

        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 1;
        }

        // Clear any existing errors
        dlerror();

        // Load the py4godot_init symbol
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc) dlsym(handle, "py4godot_init");

        // Check for dlsym errors
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            dlclose(handle);
            return 1;
        }

        // Call the loaded function
        GDExtensionBool result = load_function_handle(p_get_proc_address, p_library, r_initialization);

        return result;

        #elif defined(_WIN64)
        // Direct call on Windows, where dynamic linking is handled differently
        py4godot_init(p_get_proc_address, p_library, r_initialization);
        return 1;
        #endif

    }
}