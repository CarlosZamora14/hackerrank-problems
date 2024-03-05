from typing import List


def sansa_xor(arr: List[int]) -> int:
    result = 0

    if len(arr) % 2:
        for i in range(0, len(arr), 2):
            result ^= arr[i]

    return result


if __name__ == '__main__':
    t = int(input())

    for _ in range(t):
        n = int(input().strip())
        arr = list(map(int, input().rstrip().split()))

        result = sansa_xor(arr)
        print(result)
