def minimax(depth, isMax):
    if depth == 3:
        return 10 - depth if isMax else depth - 10

    if isMax:
        return max(minimax(depth+1, False),
                   minimax(depth+1, False))
    else:
        return min(minimax(depth+1, True),
                   minimax(depth+1, True))

print("Best Score:", minimax(0, True))
