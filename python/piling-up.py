from collections import deque


def solve(d: deque) -> None:
    previous = None
    while len(d):
        if d[0] >= d[-1]:
            larger = d.popleft()
        else:
            larger = d.pop()

        if previous is not None and previous < larger:
            print('No')
            return
        previous = larger

    print('Yes')


if __name__ == '__main__':
    t = int(input())
    for _ in range(t):
        n = int(input())
        d = deque(map(int, input().split()))
        solve(d)
