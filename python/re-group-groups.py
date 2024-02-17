import re


def solve(input_string: str) -> None:
    pattern = r'([0-9a-zA-Z])(?=\1)'

    for match in re.finditer(pattern, input_string):
        print(match.group())
        return

    print(-1)


string = input()
solve(string)
