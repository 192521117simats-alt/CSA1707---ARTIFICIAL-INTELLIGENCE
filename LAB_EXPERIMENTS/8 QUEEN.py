def solve(board, row):
    if row == 8:
        for r in board:
            print(" ".join("Q" if c == r else "." for c in range(8)))
        return True

    for col in range(8):
        if all(col != c and row-r != abs(col-c)
               for r, c in enumerate(board)):
            board.append(col)
            if solve(board, row + 1):
                return True
            board.pop()

    return False

solve([], 0)
