import os

project=open("output/project.txt").read().strip()

if not os.path.exists("projects/"+project):

    raise Exception("Proyecto inexistente")

print("Proyecto OK")