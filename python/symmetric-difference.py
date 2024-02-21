from typing import Set


def print_symmetric_diff(first_set: Set[int], second_set: Set[int]) -> None:
    difference = first_set.symmetric_difference(second_set)
    array = sorted(list(difference), key=int)
    for num in array:
        print(num)


if __name__ == '__main__':
    m = int(input())
    first_set = set(map(int, input().split()))
    n = int(input())
    second_set = set(map(int, input().split()))

    print_symmetric_diff(first_set, second_set)
