#!/usr/bin/env python3

import json
import os
from datetime import datetime

OUTPUT = "output"
PROJECT_FILE = os.path.join(OUTPUT, "project.txt")

with open(PROJECT_FILE, "r") as f:
    project = f.read().strip()

version_file = f"projects/{project}/version.txt"

with open(version_file, "r") as f:
    version = f.read().strip()

partes = version.split(".")

while len(partes) < 3:
    partes.append("0")

major = int(partes[0])
minor = int(partes[1])
patch = int(partes[2])

patch += 1

new_version = f"{major}.{minor}.{patch}"

with open(version_file, "w") as f:
    f.write(new_version)

manifest = {
    "project": project,
    "version": new_version,
    "date": datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S UTC"),
    "firmware": "firmware.bin"
}

with open(os.path.join(OUTPUT, "version.json"), "w") as f:
    json.dump(manifest, f, indent=4)

print("Nueva versión:", new_version)