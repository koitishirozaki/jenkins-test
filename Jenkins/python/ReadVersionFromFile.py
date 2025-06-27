import sys

def get_version_from_file(file_path, platform):
    platform_key = f"{platform}_version"
    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            if line.startswith(platform_key + "="):
                return line.split("=", 1)[1]
    return None

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python get_version.py <platform>")
        sys.exit(1)

    platform = sys.argv[1]
    file_path = "versioning.txt"
    version = get_version_from_file(file_path, platform)

    if version:
        print(version)
    else:
        print(f"No version found for platform '{platform}'")
        sys.exit(1)