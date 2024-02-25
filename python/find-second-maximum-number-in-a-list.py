if __name__ == '__main__':
    n = int(input())
    integers = set(map(int, input().split()))

    print(sorted(list(integers), key=int, reverse=True)[1])
