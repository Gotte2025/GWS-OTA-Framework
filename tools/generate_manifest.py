#!/usr/bin/env python3

import os
import json

manifest = {}

for proyecto in os.listdir("projects"):

    ruta = os.path.join("projects", proyecto)

    if not os.path.isdir(ruta):
        continue

    board = ""
    version = ""

    board_file = os.path.join(ruta, "board.txt")
    version_file = os.path.join(ruta, "version.txt")

    if os.path.exists(board_file):
        board = open(board_file).read().strip()

    if os.path.exists(version_file):
        version = open(version_file).read().strip()

    manifest[proyecto] = {
        "board": board,
        "version": version
    }

with open("output/manifest.json", "w") as f:
    json.dump(manifest, f, indent=4)

print("Manifest generado.")