from fractions import Fraction
from functools import reduce
from typing import List
from typing import Tuple


def product(fracs: List[Fraction]) -> Tuple[int, int]:
    result = reduce(lambda a, b: a * b, fracs, Fraction(1, 1))
    return result.numerator, result.denominator


if __name__ == '__main__':
    fracs = []
    for _ in range(int(input())):
        fracs.append(Fraction(*map(int, input().split())))
    result = product(fracs)
    print(*result)
