#include "gdextension_interface.h"
class Wrapper{
    GodotObject godot_owner;

    public:
    void set_godot_owner(self,GodotObject owner) {
        godot_owner = owner;
    }

    GodotObject get_godot_owner() {
        return godot_owner;
    }
};