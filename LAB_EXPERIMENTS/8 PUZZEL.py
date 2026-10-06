
from collections import deque

s = (5,4,0,6,1,8,7,3,2)
g = (1,2,3,4,5,6,7,8,0)
q = deque([(s, [])])
v = {s}

while q:
    s, p = q.popleft()
    if s == g:
        for i, a in enumerate(p+[s]):
            print("Stage", i)
            for j in range(0,9,3):
                print(a[j:j+3])
        print("Goal Reached!")
        break

    z = s.index(0)
    for m in (z-3,z+3,z-1,z+1):
        if 0 <= m < 9 and abs(z//3-m//3)+abs(z%3-m%3)==1:
            t = list(s)
            t[z],t[m] = t[m],t[z]
            t = tuple(t)
            if t not in v:
                v.add(t)
                q.append((t,p+[s]))
else:
    print("No Solution!")
