#!/usr/bin/env python3

import subprocess
import os

project = open("output/project.txt").read().strip()

libs = f"projects/{project}/libraries.txt"

if os.path.exists(libs):

    with open(libs) as f:

        for lib in f:

            lib = lib.strip()

            if lib == "":
                continue

            print("Instalando", lib)

            subprocess.run(
                ["arduino-cli", "lib", "install", lib],
                check=False
            )