from functools import reduce
import math

n = int(input())
letters = input().split()
k = int(input())

number_of_letters_a = reduce(
    lambda prev,
    curr: prev +
    1 if curr == 'a' else prev,
    letters,
    0)

combinations = math.comb(n, k)
combinations_without_a = math.comb(n - number_of_letters_a, k)

print(1.0 - combinations_without_a / combinations)
