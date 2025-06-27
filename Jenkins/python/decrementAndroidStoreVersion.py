import fileinput
from pathlib import Path
import re

def getStoreVersion(file_path) -> int:
  with open(file_path, 'r') as file:
    for line in file:
      line = line.strip()
      if line.startswith("StoreVersion="):
        return int(line.split("=", 1)[1])
  return 0

def writeStoreVersion(file_path, version):
    pattern = re.compile(r'^(StoreVersion=)(\d+)$')
    with fileinput.input(file_path, inplace=True) as file:
        for line in file:
            match = pattern.match(line.strip())
            if match:
                new_line = f"{match.group(1)}{version}\n"
            else:
                new_line = line
            print(new_line, end='')

def main():
  script_dir = Path(__file__).resolve().parent
  project_root = script_dir.parent
  file_path = project_root / "Config" / "DefaultEngine.ini"

  currentVersion = getStoreVersion(file_path)
  if currentVersion is None:
    print("Failed to find StoreVersion")
    return
  else:
    print("Current version: "+ str(currentVersion))
    newVersion = currentVersion - 1
    writeStoreVersion(file_path, newVersion)
    print("Updated version: "+ str(newVersion))

if __name__ == '__main__':
  main()