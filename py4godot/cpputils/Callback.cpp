#include "py4godot/cpputils/Callback.h"
godot::BaseCallback* godot::get_callback_by_address(long long address)
{
    if (godot::address_to_callback.find(address) != godot::address_to_callback.end()){
        return godot::address_to_callback[address];
    }
    return nullptr;
}