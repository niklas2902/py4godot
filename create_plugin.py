import os
from dataclasses import dataclass
from os import path
import zipfile
from typing import List

import docker
import tarfile
import shutil

from build_tools import download_get_pip


@dataclass
class DockerImageContainer:
    image_name:str
    container_name:str
    platform:str
builds:List[DockerImageContainer] = [
    DockerImageContainer("linux64_py4godot","py4godot_linux64_container" ,"linux64"),
    DockerImageContainer("windows64_py4godot","py4godot_windows64_container" ,"windows64"),
    #DockerImageContainer("linux32_py4godot", "py4godot_linux32_container", "linux32"),
    #DockerImageContainer("windows32_py4godot", "py4godot_windows32_container", "windows32"),
    ]

def get_docker_build_name(name):
    if name.endswith("64"):
        return name[:-2]
    return name

def untar_file(tar_file, extract_path):
    with tarfile.open(tar_file, 'r') as tar:
        tar.extractall(extract_path)

def unzip_zip(zip_file, extract_path):
    with zipfile.ZipFile(zip_file, 'r') as zip_ref:
        zip_ref.extractall(extract_path)

def run_docker():
    client = docker.from_env()
    client.containers.prune()


    for build in builds:
        clean_up_image(build, client)
        print(f"Running container {build.platform}...")
        client.containers.run(image = build.image_name, name=build.platform)
        last_container = client.containers.get(build.platform)

        folder_path = "plugin"
        if not os.path.exists(folder_path):
            os.makedirs(folder_path)
            print(f"Folder '{folder_path}' created.")
        else:
            print(f"Folder '{folder_path}' already exists.")
        f = open(f'plugin/{build.platform[:-2]}.tar', 'wb')

        bits, stat = last_container.get_archive(f'/app/build/final/{build.platform}/cpython-3.12.4-{build.platform}')

        print(stat)
        for chunk in bits:
           f.write(chunk)
        f.close()
        print("Extracting build to plugin ...")
        untar_file(f'plugin/{build.platform[:-2]}.tar', 'plugin/addons/py4godot')
        print("Finished extracting")

def clean_up_image(build, client):
    try:
        print(f"Checking if the image {build.image_name} exists...")
        image = client.images.get(build.image_name)
        print(f"Image {build.image_name} exists, removing it...")
        client.images.remove(image=build.image_name, force=True)
    except docker.errors.ImageNotFound:
        print(f"Image {build.image_name} does not exist, proceeding...")
    print(f"Building Docker image {build.image_name}...")
    client.images.build(path=".", dockerfile=f"dockerbuild/{get_docker_build_name(build.platform)}",
                        tag=build.image_name,
                        rm=True,  # Remove intermediate containers after a successful build
                        forcerm=True  # Always remove intermediate containers even if the build fails
                        )

def copy_other_files(folder_path):
    shutil.copy("build_resources/python.gdextension", folder_path+"/python.gdextension")
    shutil.copy("build_resources/dependencies.txt", folder_path+"/dependencies.txt")
    shutil.copy("build_resources/Python.svg", folder_path + "/Python.svg")
    shutil.copy("build_resources/install_dependencies.py", folder_path + "/install_dependencies.py")
    download_get_pip(folder_path)
    with open(folder_path+"/.gitignore", "w") as f:
        f.write("*")

if __name__ == "__main__":
    run_docker()
    copy_other_files("plugin/addons/py4godot")
