import json
from datetime import datetime

project = open("output/project.txt").read().strip()

board = open(f"projects/{project}/board.txt").read().strip()

version = open(f"projects/{project}/version.txt").read().strip()

info = {

    "framework":"GWS OTA Framework",

    "project":project,

    "board":board,

    "version":version,

    "date":datetime.now().strftime("%d/%m/%Y %H:%M:%S"),

    "status":"OK"

}

with open("output/build_info.json","w") as f:

    json.dump(info,f,indent=4)

print("Build Info generado")