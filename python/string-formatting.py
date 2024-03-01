def print_formatted(number: int) -> None:
    width = len(format(number, 'b'))

    for n in range(1, number + 1):
        number_formats = [
            format(n, 'd'),
            format(n, 'o'),
            format(n, 'X'),
            format(n, 'b'),
        ]

        number_formats = [s.rjust(width) for s in number_formats]
        print(*number_formats)


if __name__ == '__main__':
    n = int(input())
    print_formatted(n)
