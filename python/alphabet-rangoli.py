def print_rangoli(size: int) -> None:
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    pattern = [None] * (2 * size - 1)

    for row in range(size):
        middle = alphabet[size - (row + 1)]
        left = ''.join([(alphabet[size - (i + 1)] + '-') for i in range(row)])
        left = left.rjust(2 * (size - 1), '-')
        right = left[::-1]

        full_row = left + middle + right

        pattern[row] = full_row
        pattern[-(row + 1)] = full_row

    print('\n'.join(pattern))


if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
