from typing import Tuple
import cmath


def get_polar_repr(number: complex) -> Tuple[float, float]:
    phase = cmath.phase(number)
    modulus = abs(number)

    return phase, modulus


if __name__ == '__main__':
    number = complex(input())
    phase, modulus = get_polar_repr(number)

    print(modulus)
    print(phase)
