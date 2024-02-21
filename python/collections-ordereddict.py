from collections import OrderedDict

n = int(input())
items = OrderedDict()

for _ in range(n):
    name, price = input().rsplit(sep=' ', maxsplit=1)
    items[name] = int(price) + (items[name] if name in items else 0)

for key in items:
    print(key, items[key])
