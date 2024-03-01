def design_doormat(n: int, m: int) -> str:
    doormat = [None] * n

    for row_number in range(n // 2):
        ends = '-' * ((m - 3 * (2 * row_number + 1)) // 2)
        middle = '.|.' * (2 * row_number + 1)
        full_row = ends + middle + ends

        doormat[row_number] = full_row
        doormat[n - (row_number + 1)] = full_row

    doormat[n // 2] = 'WELCOME'.center(m, '-')

    return '\n'.join(doormat)


if __name__ == '__main__':
    n, m = map(int, input().split())
    print(design_doormat(n, m))
