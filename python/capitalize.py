def solve(s: str) -> str:
    for i in range(len(s)):
        if i == 0 or s[i - 1] == ' ':
            s = s[:i] + s[i].upper() + s[i + 1:]

    return s


if __name__ == '__main__':
    s = input()
    result = solve(s)
    print(result)
