import os
from os import path
import zipfile
import docker
import tarfile
import shutil

def untar_file(tar_file, extract_path):
    with tarfile.open(tar_file, 'r') as tar:
        tar.extractall(extract_path)

def unzip_zip(zip_file, extract_path):
    with zipfile.ZipFile(zip_file, 'r') as zip_ref:
        zip_ref.extractall(extract_path)

def run_docker():
    client = docker.from_env()
    client.containers.prune()
    client.containers.run(image = "windows_py4godot", name="windows64")
    last_container = client.containers.get("windows64")

    folder_path = "plugin"
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)
        print(f"Folder '{folder_path}' created.")
    else:
        print(f"Folder '{folder_path}' already exists.")
    f = open('plugin/windows_build.tar', 'wb')

    bits, stat = last_container.get_archive('/app/build/final/windows64/cpython-3.12.4-windows64')

    print(stat)
    for chunk in bits:
       f.write(chunk)

    f.close()


    client.containers.run(image = "linux_py4godot", name="linux64")
    last_container = client.containers.get("linux64")
    f = open('plugin/linux_build.tar', 'wb')

    bits, stat = last_container.get_archive('/app/build/final/linux64/cpython-3.12.4-linux64')


    print(stat)
    for chunk in bits:
       f.write(chunk)

    f.close()

    untar_file('plugin/windows_build.tar', 'plugin/addons/py4godot')
    untar_file('plugin/linux_build.tar', 'plugin/addons/py4godot')

def copy_other_files(folder_path):
    shutil.copy("build_resources/plugin.cfg", folder_path+"/plugin.cfg")
    shutil.copy("example/addons/py4godot/py4godot.gd", folder_path + "/py4godot.gd")
    shutil.copy("build_resources/python.gdextension", folder_path+"/python.gdextension")
    shutil.copy("example/addons/py4godot/Python.svg", folder_path + "/Python.svg")
    with open(folder_path+"/.gitignore", "w") as f:
        pass

if __name__ == "__main__":
    run_docker()
    copy_other_files("plugin/addons/py4godot")