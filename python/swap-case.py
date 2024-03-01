def swap_case(s: str) -> str:
    modified_chars = [c.upper() if c.islower() else c.lower() for c in s]
    return ''.join(modified_chars)


if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)
