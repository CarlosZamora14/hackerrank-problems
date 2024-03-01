from typing import List
from typing import Tuple


def count_sort(arr: List[Tuple[str, str]]) -> str:
    arr.sort(key=lambda x: int(x[0]))
    result = ' '.join(map(lambda x: x[1], arr))
    return result


if __name__ == '__main__':
    n = int(input())
    arr = []

    for i in range(1, n + 1):

        x, s = input().split()

        if 2 * i <= n:
            s = '-'

        arr.append((x, s))

    print(count_sort(arr))
