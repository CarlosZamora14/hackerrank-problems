import itertools

string = input()
groups = []

for k, g in itertools.groupby(string):
    group_len = len(list(g))
    groups.append((group_len, int(k)))

print(' '.join(map(str, groups)))
