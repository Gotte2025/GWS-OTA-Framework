#!/usr/bin/env python3

import os

projects=[]

for p in sorted(os.listdir("projects")):

    if os.path.isdir(os.path.join("projects",p)):
        projects.append(p)

print()

print("===================================")
print(" GWS OTA Framework")
print("===================================")

for i,p in enumerate(projects,1):
    print(f"{i} - {p}")

print()

n=int(input("Proyecto: "))

project=projects[n-1]

with open("output/project.txt","w") as f:
    f.write(project)

print()

print("Proyecto seleccionado:",project)