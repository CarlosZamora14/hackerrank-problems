import itertools

string, k = input().split()
string = sorted(string)

for i in range(int(k)):
    combinations = [''.join(elem) for elem in itertools.combinations(string, i + 1)]

    for elem in combinations:
        print(elem)
