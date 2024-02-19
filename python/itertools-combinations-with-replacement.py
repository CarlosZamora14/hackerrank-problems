import itertools

string, k = input().split()
string = sorted(string)
k = int(k)

combinations = [
    ''.join(elem) for elem in itertools.combinations_with_replacement(string, k)
]

for elem in combinations:
    print(elem)
