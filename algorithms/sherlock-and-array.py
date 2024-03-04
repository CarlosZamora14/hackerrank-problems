from typing import List


def balanced_sums(arr: List[int]) -> str:
    partial_sums = []

    for idx, value in enumerate(arr):
        partial_sums.append(value + (partial_sums[idx - 1] if idx > 0 else 0))

    for idx, left_sum in enumerate(partial_sums):
        right_sum = partial_sums[-1]

        if idx > 0:
            right_sum -= partial_sums[idx - 1]

        if left_sum == right_sum:
            return "YES"

    return "NO"


if __name__ == '__main__':
    T = int(input())

    for _ in range(T):
        n = int(input())
        arr = list(map(int, input().split()))

        result = balanced_sums(arr)
        print(result)
