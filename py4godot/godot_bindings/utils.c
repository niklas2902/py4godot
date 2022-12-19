#include "gdnative_interface.h"

GDNativeConstTypePtr* get_incremented_pointer(GDNativeConstTypePtr* ptr, int val){
    return ptr + val
}