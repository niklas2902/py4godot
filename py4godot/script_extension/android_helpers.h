#pragma once
#include "py4godot/cppclasses/DirAccess/DirAccess.h"
#include "py4godot/cppclasses/FileAccess/FileAccess.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/cpputils/utils.h"

void copy_directory_recursive(String& source, String& target, bool copy_scripts);
void copy_file(String& source, String& target);
void extract_addon_to_user_dir() {
    String source_dir = c_string_to_string("res://addons/py4godot");
    String target_dir = c_string_to_string("user://files/addons/py4godot");
    String user_path = c_string_to_string("user://");

    DirAccess dir = DirAccess::open(user_path);
    auto files_path = c_string_to_string("files/py4godot");
    dir.make_dir_recursive(files_path);
    copy_directory_recursive(source_dir, target_dir, false);


    String scripts_source_dir = c_string_to_string("res://");
    auto scripts_path = c_string_to_string("files/scripts");
    dir.make_dir_recursive(scripts_path);
    String scripts_target_dir = c_string_to_string("user://files/scripts");

    copy_directory_recursive(scripts_source_dir, scripts_target_dir, true);

}

void copy_directory_recursive(String& source, String& target, bool copy_scripts) {
    DirAccess dir = DirAccess::open(source);

    // Create target directory
    auto user_dir = c_string_to_string("user://");
    auto empty_string = c_string_to_string("");
    DirAccess target_dir = DirAccess::open(user_dir);

    auto replaced = target.replace(user_dir, empty_string);
    target_dir.make_dir_recursive(replaced);

    dir.list_dir_begin();
    String file_name = dir.get_next();

    while (file_name != empty_string) {
        auto dot = c_string_to_string(".");
        auto dotdot = c_string_to_string("..");
        if (file_name == dot || file_name == dotdot) {
            file_name = dir.get_next();
            continue;
        }

        String separator = c_string_to_string("/");
        String source_path = source.path_join(separator).path_join(file_name);
        String target_path = target.path_join(separator).path_join(file_name);

        String addons_path = c_string_to_string("addons/py4godot");
        if (copy_scripts && source_path.contains(addons_path)){
            file_name = dir.get_next();
            continue;
        }

        if (dir.current_is_dir()) {
            // Recursively copy subdirectory
            copy_directory_recursive(source_path, target_path, copy_scripts);
        } else {
            // Copy file
            String python_ending = c_string_to_string("py");
            if (copy_scripts && !file_name.ends_with(python_ending)){
                file_name = dir.get_next();
                continue;
            }
            copy_file(source_path, target_path);
        }

        file_name = dir.get_next();
    }

    dir.list_dir_end();
}

void copy_file(String& source, String& target) {
    FileAccess source_file = FileAccess::open(source, 1/*Read*/);
    FileAccess target_file = FileAccess::open(target, 2/*WRITE*/);

    PackedByteArray buffer = source_file.get_buffer(source_file.get_length());
    target_file.store_buffer(buffer);

    source_file.close();
    target_file.close();
}