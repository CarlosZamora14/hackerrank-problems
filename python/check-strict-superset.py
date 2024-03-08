if __name__ == '__main__':
    a = set(map(int, input().split()))
    n = int(input())
    sets = []

    for _ in range(n):
        sets.append(set(map(int, input().split())))

    answer = True

    for subset in sets:
        if len(a) <= len(subset) or len(a.intersection(subset)) != len(subset):
            answer = False
            break

    print(answer)
