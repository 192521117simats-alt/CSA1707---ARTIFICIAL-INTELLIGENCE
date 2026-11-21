def minimax(d, i, a, b, maxp):
    if d == 2:
        return tree[i]
    if maxp:
        v = -999
        for j in range(2):
            v = max(v, minimax(d+1, i*2+j, a, b, False))
            a = max(a, v)
            if b <= a: break
        return v
    else:
        v = 999
        for j in range(2):
            v = min(v, minimax(d+1, i*2+j, a, b, True))
            b = min(b, v)
            if b <= a: break
        return v

tree = [3, 5, 6, 9]
print("Best Value:", minimax(0, 0, -999, 999, True))
