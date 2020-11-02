import re
import sys

for line in sys.stdin:
    line = line.strip()
    vtime = line.split(",")[2]
    
    if vtime != "Registration State":
        print(vtime,1)
              
    elif vtime == "":
        print("No Record", 1)
