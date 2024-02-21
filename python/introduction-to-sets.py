from typing import List


def average(array: List[int]) -> float:
    distinct_elems = set(array)
    avg = round(sum(distinct_elems) / len(distinct_elems), 3)
    return avg


if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)
