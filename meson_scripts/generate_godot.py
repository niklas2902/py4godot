from config import python_ver

def generate_gdignore(target_platform):
    with open(f"build/final/{target_platform}/{python_ver}-{target_platform}/.gdignore", "w") as gdignore_file:
        pass
