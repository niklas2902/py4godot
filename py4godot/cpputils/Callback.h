#pragma once
#include <unordered_map>
namespace godot{
   static long long id_counter;
    class BaseCallback{
    };

    template<class T>
    class Callback:public BaseCallback{
        public:

        void* instance;
        void (*callback)(T&, void*) ;
    };

    static std::unordered_map<long long,BaseCallback*> address_to_callback = {};

    BaseCallback* get_callback_by_address(long long address);
}