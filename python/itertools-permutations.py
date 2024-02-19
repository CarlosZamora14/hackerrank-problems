import itertools

string, k = input().split()

permutations = sorted([
    ''.join(elem) for elem in itertools.permutations(string, int(k))
])

for elem in permutations:
    print(elem)
