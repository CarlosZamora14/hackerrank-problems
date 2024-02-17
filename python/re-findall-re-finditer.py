import re


def solve(input_string: str) -> None:
    has_matches = False
    pattern = r'[qwrtypsdfghjklzxcvbnm]([aeiou]{2,})(?=[qwrtypsdfghjklzxcvbnm])'

    for match in re.finditer(pattern, input_string, flags=re.IGNORECASE):
        has_matches = True
        print(match.group(1))

    if not has_matches:
        print(-1)


string = input()
solve(string)
