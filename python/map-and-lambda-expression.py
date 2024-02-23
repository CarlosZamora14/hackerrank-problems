from typing import List


def cube(x: int) -> int:
    return x ** 3


def fibonacci(n: int) -> List[int]:
    sequence = [0, 1]

    for _ in range(n - 2):
        sequence.append(sequence[-1] + sequence[-2])

    return sequence[:n]


if __name__ == '__main__':
    n = int(input())
    print(list(map(cube, fibonacci(n))))
