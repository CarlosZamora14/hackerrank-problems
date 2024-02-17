import re

t = int(input())
pattern = r'^[-+]?[0-9]*\.[0-9]+$'

for _ in range(t):
    n = input()
    print(bool(re.match(pattern, n)))
