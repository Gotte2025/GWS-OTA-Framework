import os
import subprocess

project=open("output/project.txt").read().strip()

board=open(f"projects/{project}/board.txt").read().strip()

print("----------------------------------")
print("Proyecto :",project)
print("Board    :",board)
print("----------------------------------")

cmd=[
"arduino-cli",
"compile",
"--fqbn",
board,
f"projects/{project}"
]

print()

print("Ejecutando:")

print(" ".join(cmd))

print()

subprocess.run(cmd)