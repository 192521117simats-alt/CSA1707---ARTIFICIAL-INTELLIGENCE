from collections import deque

start=(3,3,0); goal=(0,0,1)
moves=[(1,0),(2,0),(0,1),(0,2),(1,1)]

def valid(m,c):
    return 0<=m<=3 and 0<=c<=3 and (m==0 or m>=c) and (3-m==0 or 3-m>=3-c)

q=deque([(start,[])])
seen={start}

while q:
    s,p=q.popleft()
    if s==goal:
        for x in p+[s]: print(x)
        print("Goal Reached!")
        break
    m,c,b=s
    for dm,dc in moves:
        n=(m-dm,c-dc,1) if b==0 else (m+dm,c+dc,0)
        if valid(n[0],n[1]) and n not in seen:
            seen.add(n); q.append((n,p+[s]))
