import hashlib

with open("output/firmware.bin","rb") as f:

    data=f.read()

sha=hashlib.sha256(data).hexdigest()

print(sha)

with open("output/firmware.sha256","w") as f:

    f.write(sha)