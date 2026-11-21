colors = ['Red', 'Green', 'Blue']
map = {'A': ['B', 'C'], 'B': ['A', 'C'], 'C': ['A', 'B']}

result = {}

for region in map:
    for color in colors:
        if all(result.get(n) != color for n in map[region]):
            result[region] = color
            break

print(result)
