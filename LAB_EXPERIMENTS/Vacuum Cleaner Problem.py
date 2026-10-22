rooms = [1, 0, 1, 0]
print("Initial rooms:", rooms)

for i in range(len(rooms)):
    if rooms[i] == 1:
        print("Room", i + 1, "is Dirty")
        rooms[i] = 0
        print("Room", i + 1, "Cleaned")
    else:
        print("Room", i + 1, "is already Clean")

print("Final rooms:", rooms)
print("All rooms are clean!")
