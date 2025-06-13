#include "main.h"
#include "gdextension_interface.h"

#if defined(__linux__) || defined(__APPLE__)
#include <iostream>
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#include <dlfcn.h>  // For dlopen, dlsym, dlclose on Linux/macOS
#elif defined(_WIN32) || defined(_WIN64)
#include <iostream>
#include <windows.h>  // For LoadLibrary, GetProcAddress, FreeLibrary on Windows
#endif

typedef GDExtensionBool (*Py4GodotInitFunc)(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                            GDExtensionClassLibraryPtr p_library,
                                            GDExtensionInitialization *r_initialization);

std::string get_library_path() {
    #if defined(__linux__)
    return "addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so";
    #elif defined(__APPLE__)
    return "addons/py4godot/cpython-3.12.4-darwin64/python/bin/main.dylib";
    #elif defined(_WIN32) || defined(_WIN64)
    #if defined(_M_ARM64)
    return "addons/py4godot/cpython-3.12.4-windowsarm64/python/main.dll";
    #else
    return "addons/py4godot/cpython-3.12.4-windows64/python/main.dll";
    #endif
    #else
    return "";  // Unsupported platform
    #endif
}

extern "C" {
    GDExtensionBool GDN_EXPORT initialize_pythonscript(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                                       GDExtensionClassLibraryPtr p_library,
                                                       GDExtensionInitialization *r_initialization) {
        std::string library_path = get_library_path();
        if (library_path.empty()) {
            std::cerr << "Unsupported platform or architecture." << std::endl;
            return 1;
        }

        #if defined(__linux__)
        void* handle = nullptr;

        #if defined(__aarch64__)
        // Load the ARM64 Linux shared library
        handle = dlopen("addons/py4godot/cpython-3.12.4-linuxarm64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        #else
        // Load the x86_64 Linux shared library
        handle = dlopen("addons/py4godot/cpython-3.12.4-linux64/python/bin/main.so", RTLD_NOW | RTLD_GLOBAL);
        #endif

        #elif defined(__APPLE__)
        // Load the shared library on macOS
        void* handle = dlopen("addons/py4godot/cpython-3.12.4-darwin64/python/bin/main.dylib", RTLD_NOW | RTLD_GLOBAL);
        #endif

        #if defined(__linux__) || defined(__APPLE__)
        void* handle = dlopen(library_path.c_str(), RTLD_NOW | RTLD_GLOBAL);
        if (!handle) {
            std::cerr << "Cannot load library: " << dlerror() << std::endl;
            return 1;
        }

        dlerror();  // Clear any existing errors
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc)dlsym(handle, "py4godot_init");
        const char* dlsym_error = dlerror();
        if (dlsym_error) {
            std::cerr << "Cannot load symbol 'py4godot_init': " << dlsym_error << std::endl;
            dlclose(handle);
            return 1;
        }

        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);
        #if defined(__linux__)
        // Uncomment if safe to close the library on Linux
        // dlclose(handle);
        #endif
        return result;

        #elif defined(_WIN32) || defined(_WIN64)
        // Log the full path being loaded
        std::cerr << "[py4godot] Attempting to load library: " << library_path << std::endl;
        
        // Get absolute path for debugging
        char fullPath[MAX_PATH];
        if (GetFullPathNameA(library_path.c_str(), MAX_PATH, fullPath, nullptr)) {
            std::cerr << "[py4godot] Full path: " << fullPath << std::endl;
            
            // Extract directory from full path
            std::string fullPathStr(fullPath);
            size_t lastSlash = fullPathStr.find_last_of("\\/");
            if (lastSlash != std::string::npos) {
                std::string dirPath = fullPathStr.substr(0, lastSlash);
                std::cerr << "[py4godot] Setting DLL directory to: " << dirPath << std::endl;
                
                // Convert to wide string for SetDllDirectoryW
                int size_needed = MultiByteToWideChar(CP_UTF8, 0, dirPath.c_str(), -1, NULL, 0);
                std::wstring wideDirPath(size_needed - 1, 0);
                MultiByteToWideChar(CP_UTF8, 0, dirPath.c_str(), -1, &wideDirPath[0], size_needed);
                
                // Set the DLL search directory
                if (SetDllDirectoryW(wideDirPath.c_str())) {
                    std::cerr << "[py4godot] Successfully set DLL directory" << std::endl;
                } else {
                    std::cerr << "[py4godot] Failed to set DLL directory, error: " << GetLastError() << std::endl;
                }
            }
        }
        
        HMODULE handle = LoadLibraryA(library_path.c_str());
        if (!handle) {
            DWORD error = GetLastError();
            std::cerr << "[py4godot] ERROR: Cannot load library. Error code: " << error << std::endl;
            
            // Get detailed error message
            LPVOID lpMsgBuf;
            DWORD bufLen = FormatMessage(
                FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                NULL,
                error,
                MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                (LPTSTR) &lpMsgBuf,
                0, NULL);
            
            if (bufLen) {
                std::cerr << "[py4godot] Error details: " << (char*)lpMsgBuf << std::endl;
                LocalFree(lpMsgBuf);
            }
            
            // Check if file exists
            DWORD fileAttr = GetFileAttributesA(library_path.c_str());
            if (fileAttr == INVALID_FILE_ATTRIBUTES) {
                std::cerr << "[py4godot] File does not exist or cannot be accessed at: " << library_path << std::endl;
            } else {
                std::cerr << "[py4godot] File exists but cannot be loaded. This may indicate missing dependencies." << std::endl;
            }
            
            return 1;
        }

        std::cerr << "[py4godot] Library loaded successfully. Looking for 'py4godot_init' symbol..." << std::endl;
        
        Py4GodotInitFunc load_function_handle = (Py4GodotInitFunc)GetProcAddress(handle, "py4godot_init");
        if (!load_function_handle) {
            DWORD error = GetLastError();
            std::cerr << "[py4godot] ERROR: Cannot load symbol 'py4godot_init'. Error code: " << error << std::endl;
            
            // Get detailed error message
            LPVOID lpMsgBuf;
            DWORD bufLen = FormatMessage(
                FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
                NULL,
                error,
                MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                (LPTSTR) &lpMsgBuf,
                0, NULL);
            
            if (bufLen) {
                std::cerr << "[py4godot] Error details: " << (char*)lpMsgBuf << std::endl;
                LocalFree(lpMsgBuf);
            }
            
            FreeLibrary(handle);
            return 1;
        }

        int result = load_function_handle(p_get_proc_address, p_library, r_initialization);
        // Keep the library loaded for the application's lifetime
        return result;
        #endif
    }
}