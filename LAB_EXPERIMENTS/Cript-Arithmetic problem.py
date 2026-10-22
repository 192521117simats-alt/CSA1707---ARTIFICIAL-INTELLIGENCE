
from itertools import permutations

words = input("Enter words (e.g. SEND MORE MONEY): ").upper().split()
letters = set("".join(words))

if len(letters) > 10:
    print("Error: Maximum 10 unique letters allowed.")
else:
    for p in permutations(range(10), len(letters)):
        d = dict(zip(letters, p))

        if any(d[w[0]] == 0 for w in words):
            continue

        nums = [int("".join(str(d[c]) for c in w))
                for w in words]

        if sum(nums[:-1]) == nums[-1]:
            for w, n in zip(words, nums):
                print(w, "=", n)
            break
    else:
        print("No solution found.")
