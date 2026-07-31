import shutil
import os

os.makedirs("releases",exist_ok=True)

if os.path.exists("output/firmware.bin"):

    shutil.copy(

        "output/firmware.bin",

        "releases/firmware.bin"

    )

    print("Firmware copiado")

else:

    print("No existe firmware.bin")