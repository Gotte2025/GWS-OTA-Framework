import os
import shutil

if os.path.exists("build"):

    shutil.rmtree("build")

os.makedirs("build",exist_ok=True)

os.makedirs("output",exist_ok=True)

print("Salida limpia")