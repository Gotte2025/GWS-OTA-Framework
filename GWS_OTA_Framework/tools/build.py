#!/usr/bin/env python3

import os

project = open("output/project.txt").read().strip()

print("--------------------------------------")
print("Proyecto :", project)

board = open(f"projects/{project}/board.txt").read().strip()

print("Board    :", board)

version = open(f"projects/{project}/version.txt").read().strip()

print("Version  :", version)

print("--------------------------------------")