b = [' '] * 9

for i in range(9):
    print(b[0:3], b[3:6], b[6:9])
    p = int(input("Enter position (0-8): "))
    b[p] = 'X' if i % 2 == 0 else 'O'

    for a, c, d in [(0,1,2),(3,4,5),(6,7,8),
                    (0,3,6),(1,4,7),(2,5,8),
                    (0,4,8),(2,4,6)]:
        if b[a] == b[c] == b[d] != ' ':
            print(b[a], "Wins!")
            exit()

print("Draw!")
