if __name__ == '__main__':
    t = int(input())

    for _ in range(t):
        _ = input()
        a = set(map(int, input().split()))
        _ = input()
        b = set(map(int, input().split()))

        b.intersection_update(a)
        print(len(a) == len(b))
