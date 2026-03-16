import os


def write_if_different(file_path, text_to_write):
    if os.path.exists(file_path):
        with open(file_path, 'r') as existing_file:
            if existing_file.read() != text_to_write:
                with open(file_path, 'w') as file_to_write:
                    file_to_write.write(text_to_write)
    else:
        with open(file_path, 'w') as file_to_write:
            file_to_write.write(text_to_write)

