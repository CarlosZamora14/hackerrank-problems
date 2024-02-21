from collections import deque

n = int(input())
d = deque()

for _ in range(n):
    instruction = input().split()
    if instruction[0] == 'pop':
        d.pop()
    elif instruction[0] == 'popleft':
        d.popleft()
    elif instruction[0] == 'append':
        d.append(int(instruction[1]))
    else:
        d.appendleft(int(instruction[1]))

print(*d)
