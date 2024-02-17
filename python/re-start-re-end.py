import re


def solve(search_string: str, substring: str) -> None:
    has_matches = False
    pattern = f'{substring[:1]}(?={substring[1:]})'

    for match in re.finditer(pattern, search_string):
        has_matches = True
        print((match.start(), match.start() + len(substring) - 1))

    if not has_matches:
        print((-1, -1))


s = input()
k = input()
solve(s, k)
