def print_meson(platform):
    with open (f"build_meson/{platform}/meson-logs/testlog.txt") as file:
        print(file.read())
