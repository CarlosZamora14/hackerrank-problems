import math

if __name__ == '__main__':
    length_a = int(input())
    length_b = int(input())

    angle = 180 * math.atan(length_a / length_b) / math.pi
    print(round(angle), chr(176), sep='')
