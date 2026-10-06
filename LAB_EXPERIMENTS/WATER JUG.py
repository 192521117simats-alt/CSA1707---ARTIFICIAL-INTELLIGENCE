a, b = 0, 0

while a != 2:
    if a == 0:
        a = 4
    elif b == 3:
        b = 0
    else:
        x = min(a, 3-b)
        a -= x
        b += x

    print("4L =", a, " 3L =", b)

print("Goal Reached!")
