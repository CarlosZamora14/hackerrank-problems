import itertools

list_a = map(int, input().split())
list_b = map(int, input().split())

print(' '.join(map(str, itertools.product(list_a, list_b))))
