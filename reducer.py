import sys
from operator import itemgetter

dict_rstate_count = {}

for line in sys.stdin:
    line = line.strip()
    line = line.split()
    rstate=line[0]
    count=line[-1]
    try:
        count = int(count)
        dict_rstate_count[rstate] = dict_rstate_count.get(rstate, 0) + count
        
    except ValueError:
        pass

print(dict_rstate_count)      
  
sorted_dict_rstate_count = sorted(dict_rstate_count.items(), key=itemgetter(1))[::-1]

for rstate, count in sorted_dict_rstate_count:
    print (rstate, count)