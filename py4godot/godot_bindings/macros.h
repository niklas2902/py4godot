#ifdef _WIN32
#    ifdef LIBRARY_EXPORTS
#        define LIBRARY_API __declspec(dllexport)
#        define FUNCTIONS_API  extern "C" /*__declspec(dllexport)*/
#    else
#        define LIBRARY_API __declspec(dllimport)
#        define FUNCTIONS_API extern "C" /*__declspec(dllimport)*/
#    endif
#elif
#    define LIBRARY_API
#endif