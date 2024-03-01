import textwrap


def wrap(string: str, max_width: int) -> str:
    wrapped_str = textwrap.wrap(string, max_width)
    return '\n'.join(wrapped_str)


if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)
