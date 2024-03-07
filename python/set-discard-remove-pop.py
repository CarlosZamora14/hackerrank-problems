def handle_command(command: str, s: set) -> int:
    op, *rest = command.split()

    if op == 'pop':
        return s.pop()

    number = int(*rest)
    if op == 'remove':
        s.remove(number)
    else:
        s.discard(number)

    return number


if __name__ == '__main__':
    n = int(input())
    s = set(map(int, input().split()))
    N = int(input())

    for _ in range(N):
        command = input()
        handle_command(command, s)

    print(sum(s))
