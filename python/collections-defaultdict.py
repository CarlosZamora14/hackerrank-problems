from collections import defaultdict

if __name__ == '__main__':
    n, m = map(int, input().split())
    indices = defaultdict(list)

    for i in range(n):
        word = input()
        indices[word].append(i + 1)

    for _ in range(m):
        word = input()
        if len(indices[word]):
            print(' '.join(map(str, indices[word])))
        else:
            print(-1)
