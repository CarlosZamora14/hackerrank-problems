import re


def replace_fn(match):
    string = match.group(0)
    return ' and' if string == ' &&' else ' or'


pattern = r'\s(&&|\|\|)(?=\s)'
n = int(input())

for _ in range(n):
    line = input()
    print(re.sub(pattern, replace_fn, line))
