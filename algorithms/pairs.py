from typing import List


def pairs(k: int, arr: List[int]) -> int:
    numbers = set(arr)
    num_pairs = 0

    for number in numbers:
        if number + k in numbers:
            num_pairs += 1

    return num_pairs


if __name__ == '__main__':
    n, k = map(int, input().split())
    arr = list(map(int, input().split()))

    result = pairs(k, arr)
    print(result)
