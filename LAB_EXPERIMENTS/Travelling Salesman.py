from itertools import permutations

d = [[0,10,15,20],
     [10,0,35,25],
     [15,35,0,30],
     [20,25,30,0]]

best = None

for p in permutations(range(1,4)):
    path = (0,) + p + (0,)
    cost = sum(d[path[i]][path[i+1]] for i in range(4))
    if best is None or cost < best[0]:
        best = (cost, path)

print("Path:", best[1])
print("Minimum Cost:", best[0])
