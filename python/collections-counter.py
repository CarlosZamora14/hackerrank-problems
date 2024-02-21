from collections import Counter

if __name__ == '__main__':
    x = int(input())
    shoe_sizes = Counter(map(int, input().split()))

    total = 0
    clients = int(input())
    for _ in range(clients):
        size, price = map(int, input().split())

        if size in shoe_sizes and shoe_sizes.get(size):
            total += price
            shoe_sizes.subtract([size])

    print(total)
